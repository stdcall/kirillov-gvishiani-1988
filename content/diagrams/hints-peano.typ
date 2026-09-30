#import "@preview/cetz:0.5.2": canvas, draw

#let peano-subdivisions() = canvas(length: 20mm, {
  import draw: *
  // Two consecutive nested square subdivisions, with the printed traversal.
  let stages = (
    (offset: 0, size: 2, cells: 2, path: ((0, 1), (1, 1), (1, 0), (0, 0))),
    (
      offset: 2.6,
      size: 2,
      cells: 4,
      path: (
        (0, 3),
        (0, 2),
        (1, 2),
        (1, 3),
        (2, 3),
        (3, 3),
        (3, 2),
        (2, 2),
        (2, 1),
        (3, 1),
        (3, 0),
        (2, 0),
        (1, 0),
        (1, 1),
        (0, 1),
        (0, 0),
      ),
    ),
  )
  for stage in stages {
    let o = stage.offset
    let h = stage.size / stage.cells
    for k in range(stage.cells + 1) {
      line((o + k * h, 0), (o + k * h, 2), stroke: 0.5pt)
      line((o, k * h), (o + 2, k * h), stroke: 0.5pt)
    }
    let centers = stage.path.map(p => (
      o + (p.at(0) + 0.5) * h,
      (p.at(1) + 0.5) * h,
    ))
    for k in range(centers.len() - 1) {
      let p = centers.at(k)
      let q = centers.at(k + 1)
      let delta = ((q.at(0) - p.at(0)) * 0.28, (q.at(1) - p.at(1)) * 0.28)
      line(
        (p.at(0) + delta.at(0), p.at(1) + delta.at(1)),
        (q.at(0) - delta.at(0), q.at(1) - delta.at(1)),
        stroke: (thickness: 0.45pt, dash: "dashed"),
        mark: (end: ">"),
      )
    }
    for (k, p) in centers.enumerate() {
      content(p, text(size: 8pt, style: "italic", str(k + 1)))
    }
    line((o, 2.42), (o + 2, 2.42), stroke: 0.55pt)
    let count = stage.path.len()
    for k in range(count + 1) {
      line((o + 2 * k / count, 2.42), (o + 2 * k / count, 2.49), stroke: 0.45pt)
    }
    for k in range(count) {
      if count == 4 or k < 4 or k == 15 {
        content((o + 2 * (k + 0.5) / count, 2.62), text(
          size: 8pt,
          style: "italic",
          str(k + 1),
        ))
      }
    }
    if count == 16 { content((o + 0.75, 2.62), $dots$) }
  }
})
