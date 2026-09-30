#import "main-defs.typ": number-text
#import "numbering.typ": place-key
#let notation-locator(target) = box(context {
  let found = query(target)
  if found.len() != 1 { return number-text("?") }
  let destination = found.first().location()
  let unit = place-key(destination).slice(1)
  while unit.len() > 0 and unit.last() == 0 { unit = unit.slice(0, -1) }
  let printed = unit.map(str).join(".")
  metadata((
    kind: "cross-reference",
    target: str(target),
    resolved: true,
    printed: printed,
    position: here().position(),
    target-position: destination.position(),
  ))
  link(destination, number-text(printed))
})
#let notation-index() = context {
  heading(level: 1, numbering: none)[Список обозначений]
  let marks = query(<notation-mark>)
  let entries = marks.sorted(key: it => it.value.sort)
  set par(first-line-indent: 0pt, justify: false)
  set table(stroke: none, inset: (x: 0pt, y: 0.35em))
  table(
    columns: (auto, 1fr, auto), column-gutter: 3mm,
    ..entries
      .map(it => {
        let value = it.value
        (
          value.symbol,
          value.description,
          value.targets.map(notation-locator).join[, ],
        )
      })
      .flatten(),
  )
}
