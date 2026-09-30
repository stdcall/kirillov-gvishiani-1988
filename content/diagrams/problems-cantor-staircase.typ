#import "@preview/cetz:0.5.2": canvas, draw

// Piecewise linear stage of the Cantor function, from ternary subdivision.
#let staircase() = canvas(length: 60mm, {
  import draw: *
  let points = ((0, 0),)
  for k in range(27) {
    let digits = (
      calc.rem(calc.floor(k / 9), 3),
      calc.rem(calc.floor(k / 3), 3),
      calc.rem(k, 3),
    )
    let slope = if digits.contains(1) { 0 } else { 1 / 8 }
    let prev = points.last()
    points.push(((k + 1) / 27, prev.at(1) + slope))
  }
  line((0, 0), (1.13, 0), mark: (end: ">"))
  line((0, 0), (0, 1.13), mark: (end: ">"))
  content((1.15, 0), $x$)
  content((0, 1.16), $y$)
  content((-0.03, -0.06), $0$)
  line(..points, stroke: 0.65pt)
  for (x, text) in (
    (1 / 9, $1/9$),
    (2 / 9, $2/9$),
    (1 / 3, $1/3$),
    (2 / 3, $2/3$),
    (7 / 9, $7/9$),
    (8 / 9, $8/9$),
  ) {
    line((x, 0), (x, -0.015))
    content((x, -0.08), text)
  }
  for (y, text) in ((1 / 4, $1/4$), (1 / 2, $1/2$), (3 / 4, $3/4$), (1, $1$)) {
    line((0, y), (0.02, y))
    content((-0.08, y), text)
  }
})
