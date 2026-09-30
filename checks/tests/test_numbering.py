"""Exercise real chapters under insertions; counters and links must follow."""
import json
from pathlib import Path
import subprocess
import sys
import unittest

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT/'scripts'))
from project import tool_env  # noqa: E402

LABELS = (
    'th:metric-completion', 'th:complete-subsets',
    'th:measure-ring-extension',
    'eq:quotient-commutative-triangle',
    'eq:completion-extension-triangle', 'eq:countable-measure-additivity',
    'pr:equivalence-relations', 'pr:poset-mobius-inversion',
    'pr:padic-expansions',
    'hint:equivalence-relations', 'hint:poset-mobius-inversion',
    'hint:padic-expansions',
    'eq:hint-gaussian-binomial-recurrence', 'eq:hint-gaussian-binomial-product',
    'eq:product-measure-section-integral',
    'eq:product-measure-transposed-section-integral',
    'eq:section-integrals-equality', 'eq:radon-nikodym-density',
    'lem:hamming-ball-centroid-face', 'lem:hamming-core-initial-segment',
)


def document(insert=False, prime_insert=False):
    extra_th = '#theorem[Counter probe.] <th:counter-probe>' if insert else ''
    extra_eq = '$ 0 = 0 $ <eq:counter-probe>' if insert else ''
    extra_pr = '#problem[Counter probe.] <pr:counter-probe>' if insert else ''
    extra_prime = '$ 0 = 0 $ <eq:prime-probe>' if prime_insert else ''
    # Temporary driver: the book's actual chapters and shared style. No
    # project source is modified, and no preview wrapper lives in content/.
    return f'''
#import "/content/book-style.typ": book-style
#import "/content/statements.typ": *
#show: book-style
= Теория <part:theory>
== Сведения из теории множеств и топологии <ch:theory-sets-topology>
#include "/content/11-01-relations.typ"
{extra_th}
#include "/content/11-02-metric-spaces.typ"
{extra_eq}
#include "/content/11-03-categories.typ"
#include "/content/12-01-set-algebra.typ"
#include "/content/12-02-measure-extension.typ"
#include "/content/12-03-measure-constructions.typ"
#include "/content/12-04-measurable-functions.typ"
#include "/content/12-05-lebesgue-integral.typ"
#include "/content/12-06-stieltjes-integral.typ"
{extra_prime}
#include "/content/12-07-integral-properties.typ"
= Задачи <part:problems>
{extra_pr}
#include "/content/21-01-relations.typ"
#include "/content/21-02-metric-spaces.typ"
#include "/content/21-03-categories.typ"
= Указания <part:hints>
== Сведения из теории множеств и топологии <ch:hints-sets-topology>
#include "/content/31-01-hints-relations.typ"
#include "/content/31-02-hints-metrics.typ"
#include "/content/31-03-hints-categories.typ"
'''


def evaluate(insert=False, prime_insert=False):
    labels = '(' + ','.join(json.dumps(s) for s in LABELS) + ',)'
    expression = '''{
      import "/content/numbering.typ": numbered-record, record-number
      LABELS.map(name => {
        let r = numbered-record(label(name))
        assert(r != none, message: name)
        (name, record-number(r))
      }).to-dict()
    }'''.replace('LABELS', labels)
    process = subprocess.run(
        ['typst', 'eval', expression, '--in', '-', '--format', 'json',
         '--input', 'stage=draft'],
        cwd=ROOT, env=tool_env(ROOT), input=document(insert, prime_insert),
        capture_output=True, text=True, timeout=120)
    if process.returncode:
        raise AssertionError(process.stderr)
    return json.loads(process.stdout)


class NumberingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.original = evaluate()
        cls.inserted = evaluate(True)
        cls.prime_inserted = evaluate(prime_insert=True)

    def test_theorems_and_equations_shift_then_restart(self):
        for name in ('th:metric-completion', 'th:complete-subsets',
                     'eq:quotient-commutative-triangle',
                     'eq:completion-extension-triangle'):
            with self.subTest(name=name):
                before, after = self.original[name], self.inserted[name]
                self.assertEqual(after[:-1], before[:-1])
                self.assertEqual(after[-1], before[-1]+1)
        # Insertion in chapter I must not affect chapter II.
        for name in ('th:measure-ring-extension',
                     'eq:countable-measure-additivity'):
            self.assertEqual(self.inserted[name], self.original[name])
            self.assertEqual(self.original[name][-1], 1)

    def test_hints_follow_their_problems(self):
        for suffix, expected in (
                ('equivalence-relations', 1), ('poset-mobius-inversion', 5),
                ('padic-expansions', 32)):
            problem, hint = 'pr:'+suffix, 'hint:'+suffix
            self.assertEqual(self.original[problem], [expected])
            self.assertEqual(self.original[hint], [expected])
            self.assertEqual(self.inserted[problem], [expected+1])
            self.assertEqual(self.inserted[hint], [expected+1])

    def test_hint_equations_have_their_own_series(self):
        # These are equations (1), (2) of hint 6, after the chapter's
        # two numbered diagrams. Their series must not leak either way.
        for suffix, expected in (('recurrence', 1), ('product', 2)):
            name = 'eq:hint-gaussian-binomial-'+suffix
            self.assertEqual(self.original[name][-1], expected)
            self.assertEqual(self.inserted[name][-1], expected)

    def test_local_hint_lemmas_keep_their_series(self):
        for name, expected in (
                ('lem:hamming-ball-centroid-face', 1),
                ('lem:hamming-core-initial-segment', 2)):
            self.assertEqual(self.original[name][-1], expected)
            self.assertEqual(self.inserted[name], self.original[name])

    def test_prime_follows_base_without_consuming_a_number(self):
        base = 'eq:product-measure-section-integral'
        prime = 'eq:product-measure-transposed-section-integral'
        following = 'eq:section-integrals-equality'
        last = 'eq:radon-nikodym-density'
        self.assertEqual(self.original[base][-1], 11)
        self.assertEqual(self.original[prime][-1], '11′')
        self.assertEqual(self.original[following][-1], 12)
        self.assertEqual(self.original[last][-1], 15)
        self.assertEqual(self.prime_inserted[base][-1], 12)
        self.assertEqual(self.prime_inserted[prime][-1], '12′')
        self.assertEqual(self.prime_inserted[following][-1], 13)
        self.assertEqual(self.prime_inserted[last][-1], 16)


if __name__ == '__main__':
    unittest.main()
