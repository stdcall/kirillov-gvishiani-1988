#import "numbering.typ": restart-counters
#import "statements.typ": numbered-display
#import "main-defs.typ": reference-rules
#let roman(n) = numbering("I", n)
#let heading-number(it) = counter(heading).at(it.location()).last()
#let heading-prefix(it) = {
  if it.level == 1 { [Раздел #roman(heading-number(it))] } else if (
    it.level == 2
  ) { [Глава #roman(heading-number(it))] } else if it.level == 3 {
    [§ #heading-number(it).]
  } else { [#heading-number(it).] }
}
#let book-style(body) = {
  set page(
    width: 148mm,
    height: 220mm,
    margin: (x: 17mm, top: 17mm, bottom: 17mm),
    header: context counter(footnote).update(0),
    footer: context align(center, text(size: 10pt, counter(page).display())),
  )
  set text(
    font: "Libertinus Serif",
    size: 11pt,
    lang: "ru",
    fill: rgb("202020"),
  )
  show link: set text(fill: rgb("202020"))
  set footnote(numbering: n => "*" * n + ")")
  set par(
    justify: true,
    leading: 0.58em,
    first-line-indent: 1.25em,
    spacing: 0.8em,
  )
  set heading(numbering: "I.I.1.1", supplement: none)
  show heading: it => {
    if it.level == 1 or (it.level == 2 and heading-number(it) > 1) {
      pagebreak(weak: true)
    }
    let counted = it.numbering != none
    if counted {
      restart-counters(it.level)
      [#metadata((
        kind: "numbered",
        family: "heading",
        level: it.level,
      ))<numbered>]
    }
    set par(first-line-indent: 0pt, justify: false)
    set text(weight: "regular")
    let shown = if counted { [#heading-prefix(it) #it.body] } else { it.body }
    block(
      width: 100%,
      above: if it.level <= 2 { 8mm } else { 5mm },
      below: 4mm,
      sticky: true,
      {
        if it.level <= 3 {
          align(center, text(
            size: if it.level <= 2 { 15pt } else { 12pt },
            shown,
          ))
        } else { strong(shown) }
      },
    )
  }
  show outline: set par(first-line-indent: 0pt)
  show outline.entry: set block(breakable: false)
  show outline.entry: it => link(it.element.location(), it.indented(
    if it.element.numbering != none { heading-prefix(it.element) },
    it.inner(),
  ))
  set math.equation(numbering: none, supplement: none)
  show math.equation: set text(font: "STIX Two Math")
  show math.equation: it => {
    show ":": math.class("punctuation", ":")
    show "≥": sym.gt.eq.slant
    show "≤": sym.lt.eq.slant
    it
  }
  show math.equation.where(block: true): it => {
    if it.has("label") and str(it.label).starts-with("eq:") {
      numbered-display(it)
    } else { it }
  }
  set math.cases(gap: 0.6em)
  set enum(numbering: "1)", indent: 1.25em)
  // A drawing without a caption has no printed number and does not consume
  // the native figure counter (e.g. the Cantor staircase in problem 199).
  show figure.where(caption: none): set figure(numbering: none)
  show figure: it => context {
    let numbered = it.numbering != none
    [#metadata((
        kind: "numbered",
        family: if it.kind == table { "tab" } else { "fig" },
        native: true,
        numbered: numbered,
        number: if numbered { it.counter.at(it.location()) },
        caption: it.supplement,
      ))<numbered>#it]
  }
  set table(stroke: 0.5pt, inset: 0.4em)
  show table: set par(first-line-indent: 0pt, justify: false)
  show: reference-rules
  body
}
