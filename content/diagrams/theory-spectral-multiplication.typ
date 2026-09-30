#import "@preview/fletcher:0.5.8": diagram, edge, node

#let spectral-multiplication-square() = diagram(
  cell-size: (31mm, 16mm),
  node((0, 0), $cal(D)_A$),
  node((1, 0), $cal(D)_(M(a))$),
  node((0, 1), $H$),
  node((1, 1), $L_(2)(X,mu)$),
  edge((0, 0), (1, 0), $U$, "->"),
  edge((0, 1), (1, 1), $U$, "->"),
  edge((0, 0), (0, 1), $A$, "->", label-side: right),
  edge((1, 0), (1, 1), $M(a)$, "->"),
)
