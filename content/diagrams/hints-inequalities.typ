#import "@preview/cetz:0.5.2": canvas, draw

#let young-geometric-inequality() = canvas(length: 22mm, {
  import draw: *
  line((0, 0), (2.7, 0), mark: (end: ">"))
  line((0, 0), (0, 2.6), mark: (end: ">"))
  let curve = range(101).map(i => {
    let x = i / 50
    (x, x * x * 0.58)
  })
  line(..curve, stroke: 0.9pt)
  let a = 1.6
  let b = a * a * 0.58
  line((0, b), (a, b), stroke: 0.55pt)
  line((a, 0), (a, b), stroke: (thickness: 0.55pt, dash: "dashed"))
  content((-0.12, -0.12), $0$)
  content((2.82, 0), $xi$)
  content((0, 2.73), $eta$)
  content((a, -0.18), $a$)
  content((-0.15, b), $b$)
  content((2.18, 2.52), $eta=xi^(p-1)$)
  content((2.65, 2.25), $(xi=eta^(q-1))$)
})

#let chebyshev-best-approximation() = canvas(length: 24mm, {
  import draw: *
  line((-1.2, 0), (1.25, 0), mark: (end: ">"))
  line((0, -0.62), (0, 0.67), mark: (end: ">"))
  let points = range(241).map(i => {
    let x = -1.05 + i * 2.1 / 240
    (x, 0.5 * (8 * x * x * x * x - 8 * x * x + 1))
  })
  line(..points, stroke: 0.85pt)
  let trial = range(241).map(i => {
    let x = -1.05 + i * 2.1 / 240
    (x, 0.06 * x * x * x * x + 0.1 * x * x - 0.36 * x - 0.12)
  })
  line(..trial, stroke: 0.75pt)
  content((-1, -0.10), $-1$)
  content((1, -0.10), $1$)
  content((-0.18, 0.53), $2^(1-n)$)
  content((-0.18, -0.55), $2^(1-n)$)
  content((0.36, 0.26), $T_n (x)$)
  content((-0.55, 0.32), $P(x)$)
})
