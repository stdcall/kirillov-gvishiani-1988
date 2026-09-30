#import "numbering.typ": numbered-record, place-key, record-number
#let source(n, printed: none) = context [#metadata((
  kind: "source",
  file-page: n,
  printed-page: if printed == none { str(n) } else { printed },
  position: here().position(),
))]
#let number-text(body) = text(weight: "semibold", style: "normal", body)
#let reference-rules(body) = {
  show ref: it => {
    let caption = it.supplement not in (auto, none, [])
    let result = context {
      let target = str(it.target)
      let prefix = target.split(":").first()
      let record = if it.element != none { numbered-record(it.target) }
      let number = if record != none { record-number(record) } else if (
        it.element != none
          and it.element.func() == figure
          and it.element.numbering != none
      ) { it.element.counter.at(it.element.location()) }
      let resolved = it.element != none
      let printed = if number == none {
        if record != none { none } else { "?" }
      } else {
        let own = number.last()
        if prefix == "ch" { numbering("I", own) } else if prefix == "part" {
          numbering("I", own)
        } else { str(own) }
      }
      let shown = if caption { it.supplement } else if (
        record != none and number == none
      ) { record.value.at("caption", default: [Утверждение]) } else if (
        prefix == "eq"
      ) {
        [(#number-text(printed))]
      } else { number-text(printed) }
      let destination = if not resolved { none } else if record != none {
        record.location()
      } else { it.element.location() }
      metadata((
        kind: "cross-reference",
        target: target,
        resolved: resolved,
        printed: printed,
        position: here().position(),
        target-position: if resolved { destination.position() },
      ))
      if resolved { link(destination, shown) } else { shown }
    }
    if caption { result } else { box(result) }
  }
  body
}
#let idx(..path) = [#metadata((
  kind: "index-mark",
  path: path.pos(),
))<index-mark>]
#let native-targets(it) = {
  if it.func() == ref { (it.target,) } else if it.has("children") {
    it.children.map(native-targets).flatten()
  } else if it.has("body") { native-targets(it.body) } else { () }
}
#let notation(symbol, references: [], description: none, sort: "") = {
  [#metadata((
    kind: "notation-mark",
    symbol: symbol,
    targets: native-targets(references),
    description: description,
    sort: sort,
  ))<notation-mark>]
}
#let editorial-notes = sys.inputs.at("editorial-notes", default: "on") != "off"
#let editorial-note-counter = counter("editorial-note")
#let ed-note(body) = if editorial-notes {
  editorial-note-counter.step()
  context {
    footnote(numbering: _ => (
      "*"
        + str(
          editorial-note-counter.get().first(),
        )
        + ")"
    ))[#body~— _Прим. ред._]
    counter(footnote).update(n => n - 1)
  }
}
#let editorial-bibliography = [
  #show bibliography: none
  #bibliography("../editorial.bib", style: "chicago-notes")
]
#let Ker = math.op("Ker")
#let Im = math.op("Im")
#let Hom = math.op("Hom")
#let End = math.op("End")
#let Aut = math.op("Aut")
#let tr = math.op("tr")
#let codim = math.op("codim")
#let Re = math.op("Re")
#let Im-part = math.op("Im")
#let supp = math.op("supp")
#let sign = math.op("sign")
#let diag = math.op("diag")
#let id = math.op("id")
