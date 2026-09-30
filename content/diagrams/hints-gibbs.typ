#import "@preview/cetz:0.5.2": canvas, draw

#let gibbs-limit-set() = canvas(length: 28mm, {
  import draw: *
  let amplitude = 0.589489872236
  line((-1.45, 0), (1.55, 0), mark: (end: ">"))
  line((0, -0.77), (0, 0.85), mark: (end: ">"))
  for k in (-1, 0, 1) {
    line((k, -amplitude), (k, amplitude), stroke: 0.8pt)
    circle((k, amplitude), radius: 0.025, fill: black)
    circle((k, -amplitude), radius: 0.025, fill: black)
  }
  for k in (-2, -1, 0, 1) {
    let start = calc.max(-1.15, k)
    let end = calc.min(1.15, k + 1)
    line((start, 0.5 - (start - k)), (end, 0.5 - (end - k)))
  }
  content((1.60, -0.04), $x$)
  content((-0.10, 0.85), $y$)
  content((-1.08, -0.10), $-1$)
  content((1.08, -0.10), $1$)
  content((-0.10, -0.09), $0$)
  content((-0.13, amplitude), $A$)
  content((-0.17, -amplitude), $-A$)
  content((0.15, 0.47), $1/2$)
  content((0.17, -0.47), $-1/2$)
})
