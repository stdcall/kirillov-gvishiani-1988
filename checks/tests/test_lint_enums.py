"""Distinguish book condition lists from accidentally split references."""
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[2]/'scripts'))
from lint_typst import pitfall_checks, scan  # noqa: E402


def enum_findings(text):
    kinds, ends = scan(text)
    return [item for item in pitfall_checks('probe.typ', text, kinds, ends)
            if item['rule'] == 'T042']


class EnumLint(unittest.TestCase):
    def test_native_conditions_with_source_anchor(self):
        self.assertEqual(enum_findings('''#problem[
  Эквивалентны условия:
  #source(220)
  1. Первое условие;
  2. Второе условие,
     продолжающееся на следующей строке;
  3. Третье условие.
] <pr:probe>
'''), [])

    def test_reference_broken_at_line_start(self):
        findings = enum_findings('Согласно теореме\n3. Далее следует вывод.\n')
        self.assertEqual(len(findings), 1)
        self.assertEqual(findings[0]['line'], 2)

    def test_separate_problems_do_not_form_a_list(self):
        findings = enum_findings('''#problem[
  Согласно теореме
  1. Далее следует вывод.
] <pr:first>
#problem[
  Согласно теореме
  2. Далее следует вывод.
] <pr:second>
''')
        self.assertEqual(len(findings), 2)
