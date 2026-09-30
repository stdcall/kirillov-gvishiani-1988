// Parts / chapters / paragraphs / points have heading levels 1 / 2 / 3 / 4.
// Theorems and formulas restart in chapters; problems run through the book.
// Lemmas and corollaries restart in points. Hints inherit problem numbers.
#let place-key(location) = {
  let values = counter(heading).at(location)
  (..values, ..range(calc.max(0, 4 - values.len())).map(_ => 0))
}
#let family-depth = (
  pr: 0,
  th: 2,
  lem: 4,
  prop: 2,
  cor: 4,
  rem: 4,
  exm: 4,
  exc: 0,
  eq: 2,
  tab: 0,
  fig: 0,
  bib: 0,
)
#let family-counter(family) = counter("numbered:" + family)
#let formula-primes = (
  "eq:product-measure-transposed-section-integral": (
    <eq:product-measure-section-integral>
  ),
  "eq:finite-linfinity-norm": <eq:finite-lp-norm>,
  "eq:sequence-linfinity-norm": <eq:sequence-lp-norm>,
  "eq:function-linfinity-norm": <eq:function-lp-norm>,
  "eq:functional-norm-attainment": <eq:functional-norm-bound>,
  "eq:schwartz-integral-seminorm": <eq:schwartz-sup-seminorm>,
  "eq:schwartz-square-integral-seminorm": <eq:schwartz-sup-seminorm>,
  "eq:distribution-convolution-symmetric-definition": (
    <eq:distribution-convolution-definition>
  ),
  "eq:inverse-fourier-commutation-powers": <eq:fourier-commutation-powers>,
  "eq:inverse-fourier-operator-conjugation": <eq:fourier-operator-conjugation>,
)
#let formula-prime-marks = (
  "eq:schwartz-square-integral-seminorm": "″",
)
#let restart-counters(level) = {
  for (family, depth) in family-depth {
    if depth >= level { family-counter(family).update(0) }
  }
}
#let numbered-record(target) = {
  if query(target).len() != 1 { return none }
  query(selector(<numbered>).within(target)).at(0, default: none)
}
#let object-number(
  family,
  location,
  prime: none,
  prime-mark: "′",
  tag: none,
) = {
  let scope = place-key(location).slice(0, family-depth.at(family))
  if tag != none { return (..scope, tag) }
  if prime != none {
    let base = numbered-record(label(prime))
    let number = if base == none { ("?",) } else { base.value.number }
    return (..number.slice(0, -1), str(number.last()) + prime-mark)
  }
  (..scope, family-counter(family).at(location).first())
}
#let record-number(item) = {
  if item.value.kind == "hint" { return item.value.number }
  if item.value.at("native", default: false) { return item.value.number }
  if item.value.family == "heading" {
    return place-key(item.location()).slice(0, item.value.level)
  }
  if not item.value.at("numbered", default: true) { return none }
  object-number(
    item.value.family,
    item.location(),
    prime: item.value.at("prime", default: none),
    prime-mark: item.value.at("prime-mark", default: "′"),
    tag: item.value.at("tag", default: none),
  )
}
#let record(
  family,
  numbered: true,
  caption: none,
  ..flags,
) = context [#metadata((
  kind: "numbered",
  family: family,
  numbered: numbered,
  caption: caption,
  ..flags.named(),
  number: if numbered { object-number(family, here(), ..flags.named()) },
))<numbered>]
