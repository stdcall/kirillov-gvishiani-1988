// Parts / chapters / paragraphs / points have heading levels 1 / 2 / 3 / 4.
// Theorems and formulas restart in chapters; problems run through the book.
// Hints inherit problem numbers. Local lemma series are explicit exceptions.
#let place-key(location) = {
  let values = counter(heading).at(location)
  (..values, ..range(calc.max(0, 4 - values.len())).map(_ => 0))
}
#let family-depth = (
  pr: 0,
  th: 2,
  lem: 2,
  prop: 2,
  cor: 2,
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
#let object-number(family, location, prime: none, tag: none) = {
  let scope = place-key(location).slice(0, family-depth.at(family))
  if tag != none { return (..scope, tag) }
  if prime != none {
    let base = numbered-record(label(prime))
    let number = if base == none { ("?",) } else { base.value.number }
    return (..number.slice(0, -1), str(number.last()) + "′")
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
