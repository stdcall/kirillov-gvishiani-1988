#import "numbering.typ": (
  family-counter, formula-primes, numbered-record, object-number, record,
  record-number,
)
#import "main-defs.typ": number-text
#let references-in(it) = {
  if it.func() == ref { (it.target,) } else if it.has("children") {
    it.children.map(references-in).flatten()
  } else if it.has("body") { references-in(it.body) } else { () }
}
#let numbered-display(it) = {
  let base = formula-primes.at(str(it.label), default: none)
  let prime = if base != none { str(base) }
  if prime == none { family-counter("eq").step() }
  context {
    record("eq", prime: prime)
    math.equation(
      block: true,
      number-align: end + horizon,
      numbering: _ => text(font: "Libertinus Serif", style: "normal")[(
        #object-number("eq", here(), prime: prime).last()
        )],
      it.body,
    )
  }
}
#let sequence = [].func()
#let join-pieces(pieces) = sequence(
  pieces
    .map(it => if it.func() == sequence and not it.has("label") {
      it.children
    } else { (it,) })
    .flatten(),
)
#let keep-label(original, rebuilt) = {
  if original.has("label") [#rebuilt#original.label] else { rebuilt }
}

// Put `head` at the start of the first paragraph of `body`.
#let prepend-heading(body, head) = {
  if body.func() in (enum.item, list.item, enum, list, terms) {
    // A statement beginning with a list has a separate heading paragraph.
    // Native block stickiness keeps it with the first item across a page.
    block(sticky: true, above: 0pt, below: 0.58em, head) + body
  } else if body.func() == block {
    let fields = body.fields()
    let inner = fields.remove("body")
    block(prepend-heading(inner, head), ..fields)
  } else if body.func() == sequence and body.children.len() > 0 {
    let children = body.children
    let first = children.position(it => (
      it.func()
        not in (
          [ ].func(),
          parbreak,
        )
    ))
    if first == none { join-pieces((head, body)) } else {
      keep-label(body, join-pieces((
        ..children.slice(0, first),
        prepend-heading(children.at(first), head),
        ..children.slice(first + 1),
      )))
    }
  } else { head + body }
}

// Put `ending` after the last word or formula of `body`.
#let append-ending(body, ending) = {
  if body.func() == math.equation and body.block {
    // A display does not span the line by itself; widen it so that the mark
    // stands at the right margin on the display's last line.
    block(width: 100%, {
      place(bottom + right, ending)
      body
    })
  } else if body.func() in (block, box) {
    let fields = body.fields()
    let inner = fields.remove("body")
    body.func()(append-ending(inner, ending), ..fields)
  } else if body.func() == sequence and body.children.len() > 0 {
    let children = body.children
    let last = children
      .rev()
      .position(it => it.func() not in ([ ].func(), parbreak))
    if last == none { join-pieces((body, ending)) } else {
      let index = children.len() - last - 1
      keep-label(body, join-pieces((
        ..children.slice(0, index),
        append-ending(children.at(index), ending),
        ..children.slice(index + 1),
      )))
    }
  } else { body + ending }
}

// A statement is a run of ordinary paragraphs with a little extra space
// around it, as in the book, not a block of its own: then Typst's paragraph
// indent works as in the book. The statement's head is indented like a new
// paragraph, so is the paragraph after the statement, while text that
// continues a sentence after a display formula stays flush left (a block
// would break the chain of paragraphs and lose the first two indents).
//
// Typst does not indent a paragraph that follows a display. A statement
// starts a new paragraph even there, so its first paragraph is indented
// always (`all: true`, the amount of book-style.typ); the rest of the
// statement follows the ordinary rule.
#let indent-first(body) = {
  let styled(it) = {
    set par(first-line-indent: (amount: 1.25em, all: true))
    it
  }
  let breaks(it) = (
    it.func() in (parbreak, block, grid, table, figure, list, enum, terms)
      or (it.func() == math.equation and it.block)
  )
  if body.func() == sequence and body.children.len() > 0 {
    let end = body.children.position(breaks)
    if end == none { styled(body) } else {
      join-pieces((
        styled(join-pieces(body.children.slice(0, end))),
        ..body.children.slice(end),
      ))
    }
  } else { styled(body) }
}

// The space around a statement is the paragraph spacing and a little more.
// It is weak and collapses with the paragraph spacing and with the space of
// a neighbouring statement, so two statements in a row are as far apart as
// a statement and a paragraph, not twice as far.
#let statement-space = context v(par.spacing + 0.35em, weak: true)
#let statement-block(body) = {
  statement-space
  indent-first(body)
  parbreak()
  statement-space
}


#let theorem-like(kind, family, title, numbered, prime, body) = {
  let prime = if prime != none { str(references-in(prime).first()) }
  let head = {
    if numbered and prime == none { family-counter(family).step() }
    context {
      record(
        family,
        numbered: numbered,
        prime: prime,
        caption: if title != none { title } else { kind },
      )
      let n = if numbered { object-number(family, here(), prime: prime).last() }
      text(style: "normal")[#strong[
          #kind#if n != none [ #n]#if title != none [ #title].
        ]
      ]
    }
  }
  text(style: "italic", statement-block(prepend-heading(body, head)))
}
#let theorem(title: none, numbered: true, prime: none, body) = theorem-like(
  "Теорема",
  "th",
  title,
  numbered,
  prime,
  body,
)
#let principle(title: none, numbered: false, body) = theorem-like(
  "Принцип",
  "th",
  title,
  numbered,
  none,
  body,
)
#let lemma(title: none, numbered: true, body) = theorem-like(
  "Лемма",
  "lem",
  title,
  numbered,
  none,
  body,
)
#let proposition(title: none, numbered: true, body) = theorem-like(
  "Предложение",
  "prop",
  title,
  numbered,
  none,
  body,
)
#let corollary(title: none, numbered: false, body) = theorem-like(
  "Следствие",
  "cor",
  title,
  numbered,
  none,
  body,
)
#let plain-statement(kind, family, numbered, body) = {
  if numbered { family-counter(family).step() }
  let head = context {
    record(family, numbered: numbered, caption: kind)
    strong[#kind#if numbered [ #object-number(family, here()).last()]. ]
  }
  statement-block(prepend-heading(body, head))
}
#let remark(numbered: false, body) = plain-statement(
  "Замечание",
  "rem",
  numbered,
  body,
)
#let example(numbered: true, body) = plain-statement(
  "Пример",
  "exm",
  numbered,
  body,
)
#let definition(body) = statement-block(prepend-heading(body, [*Определение.*
]))
#let proof(title: [Доказательство], body) = statement-block(
  prepend-heading(body, [#emph(title). ]),
)
#let difficulty(kind) = {
  if kind == "core" { super[°] } else if kind == "hard" { super("*") } else if (
    kind == "very-hard"
  ) { super("**") } else { assert(kind == none) }
}
#let hint-link(from, number, target) = metadata((
  kind: "hint-link",
  from: from,
  number: number,
  position: here().position(),
  target-position: if target != none { target.position() },
))
#let problem(difficulty: none, title: none, body) = {
  family-counter("pr").step()
  let head = context {
    record("pr")
    let number = object-number("pr", here())
    let hints = query(metadata.where(value: (
      kind: "hint",
      family: "pr",
      number: number,
    )))
    assert(hints.len() <= 1, message: "More than one hint for a problem")
    let target = if hints.len() == 1 { hints.first().location() }
    hint-link("problem", number, target)
    let mark = if difficulty == "core" { super[°] } else if (
      difficulty == "hard"
    ) { super("*") } else if difficulty == "very-hard" { super("**") }
    let words = strong[#number.last()#mark.#if title != none [ #title]]
    if target == none { words } else { link(target, words) }
    [ ]
  }
  statement-block(prepend-heading(body, head))
}
#let hint(problems, body) = {
  // The displayed formulas restart inside each hint in the printed book.
  family-counter("eq").update(0)
  // Numbered lemmas in hints are local auxiliary statements (e.g. hint 42).
  // They share the usual lemma helper and restart with each hint.
  family-counter("lem").update(0)
  let targets = references-in(problems)
  assert(targets.len() > 0)
  let head = context {
    let links = targets.map(target => {
      let found = numbered-record(target)
      let number = if found == none { ("?",) } else { record-number(found) }
      [#metadata((kind: "hint", family: "pr", number: number))<numbered>]
      let shown = number-text(str(number.last()))
      if found == none { shown } else {
        hint-link("hint", number, found.location())
        link(found.location(), shown)
      }
    })
    [#links.join[, ]. ]
  }
  statement-block(prepend-heading(body, head))
}
#let supplementary-counter = counter("supplementary-bibliography")
#let bib-item(supplementary: false, body) = {
  if supplementary { supplementary-counter.step() } else {
    family-counter("bib").step()
  }
  let head = context {
    let tag = if supplementary {
      str(supplementary-counter.get().first()) + "*"
    }
    record("bib", tag: tag)
    let n = object-number("bib", here(), tag: tag).last()
    [#n. ]
  }
  statement-block(prepend-heading(body, head))
}
