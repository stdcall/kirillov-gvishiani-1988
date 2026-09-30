#import "@preview/cetz:0.5.2": canvas, draw

#let peano-recursive-square() = canvas(length: 18mm, {
  import draw: *
  rect((0, 0), (4, 4), stroke: 0.7pt)
  line((2, 0), (2, 4), stroke: (dash: "dashed", thickness: 0.5pt))
  line((0, 2), (4, 2), stroke: (dash: "dashed", thickness: 0.5pt))
  let centers = ((1, 1), (1, 3), (3, 3), (3, 1))
  for k in range(3) {
    line(centers.at(k), centers.at(k + 1), stroke: 0.6pt, mark: (end: ">"))
  }
  for (k, p) in centers.enumerate() {
    let (x, y) = p
    let corners = (
      (x - 0.55, y - 0.55),
      (x - 0.55, y + 0.55),
      (x + 0.55, y + 0.55),
      (x + 0.55, y - 0.55),
    )
    line(..corners, stroke: 0.6pt)
    line(corners.at(0), p, stroke: 0.5pt, mark: (end: ">"))
    line(p, corners.at(3), stroke: 0.5pt, mark: (end: ">"))
    for q in corners { circle(q, radius: 0.035, fill: black) }
    circle(p, radius: 0.04, fill: black)
    content((x + 0.20, y + 0.20), $x_(#(k + 1))$)
  }
  line((0, 1), (2, 1), stroke: (dash: "dashed", thickness: 0.5pt))
  line((1, 0), (1, 2), stroke: (dash: "dashed", thickness: 0.5pt))
  rect((0.16, 0.08), (0.70, 0.62), stroke: 0.5pt)
  line((0.25, 0.14), (0.43, 0.40), (0.62, 0.14), stroke: 0.5pt)
  circle((0.43, 0.40), radius: 0.035, fill: black)
  content((0.65, 0.77), $x_11$)
  content((0.33, 0.22), $x_111$)
  content((0.36, 1.70), $x_12$)
  content((1.65, 1.72), $x_13$)
  content((1.62, 0.33), $x_14$)
  content((0.38, 2.28), $x_21$)
})
