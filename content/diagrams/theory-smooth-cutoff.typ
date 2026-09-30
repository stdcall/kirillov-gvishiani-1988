#import "@preview/cetz:0.5.2": canvas, draw

#let smooth-cutoff() = canvas(length: 14mm, {
  import draw: *
  line((-2.7, 0), (2.7, 0), mark: (end: ">"))
  line((0, -0.15), (0, 1.5), mark: (end: ">"))
  content((2.85, 0), $x$)
  content((-0.18, 1.55), $y$)
  let rise(t) = t * t * t * (10 - 15 * t + 6 * t * t)
  let points = ((-2.6, 0), (-2, 0))
  for i in range(1, 41) {
    let t = i / 40
    points.push((-2 + t, rise(t)))
  }
  points.push((1, 1))
  for i in range(1, 41) {
    let t = i / 40
    points.push((1 + t, 1 - rise(t)))
  }
  points.push((2.6, 0))
  line(..points, stroke: 0.8pt)
  content((1.1, 1.2), $chi_(1)(x)$)
  for x in (-2, -1, 1, 2) {
    line((x, -0.05), (x, 0.05))
    content((x, -0.25), $#x$)
  }
})
