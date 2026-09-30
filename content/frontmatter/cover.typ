// Cover reconstructed from the 1988 binding; all artwork is vector.
// Oswald is distributed under the SIL Open Font License in assets/.
#let cover() = {
  let green = rgb("008b51")
  let gold = rgb("c4b57c")
  set page(
    width: 148mm,
    height: 220mm,
    margin: 0mm,
    numbering: none,
    header: none,
    footer: none,
    fill: green,
  )
  set text(lang: "ru", fill: gold)
  place(top + left, dx: 73mm, dy: 20mm, text(
    font: "PT Sans",
    size: 17pt,
    tracking: 0.1pt,
  )[
    А. А. КИРИЛЛОВ \
    А. Д. ГВИШИАНИ
  ])
  place(top + left, dx: 0mm, dy: 101mm, line(
    length: 148mm,
    stroke: 0.3pt + rgb("75ae86"),
  ))
  place(top + left, dx: 17mm, dy: 117mm, text(
    font: "Oswald",
    weight: 600,
    size: 28pt,
  )[
    #set par(leading: 0.7em)
    ТЕОРЕМЫ И ЗАДАЧИ \
    ФУНКЦИОНАЛЬНОГО \
    АНАЛИЗА
  ])
  place(top + left, dx: 115mm, dy: 177mm, image(
    "../../assets/nauka-emblem.svg",
    width: 10mm,
  ))
  // The added cover is outside the printed pagination.
  pagebreak()
  counter(page).update(1)
}
