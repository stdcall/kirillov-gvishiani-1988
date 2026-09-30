#import "@preview/fletcher:0.5.8": diagram, edge, node

#let convolution-square(dual: true) = diagram(
  cell-size: (31mm, 16mm),
  node((0, 0), if dual { $cal(E)'(RR^n)$ } else { $cal(D)(RR^n)$ }),
  node((1, 0), if dual { $cal(D)'(RR^n)$ } else { $cal(E)(RR^n)$ }),
  node((0, 1), if dual { $cal(E)'(RR^n)$ } else { $cal(D)(RR^n)$ }),
  node((1, 1), if dual { $cal(D)'(RR^n)$ } else { $cal(E)(RR^n)$ }),
  edge((0, 0), (1, 0), $S(F)$, "->"),
  edge((0, 1), (1, 1), $S(F)$, "->"),
  edge((0, 0), (0, 1), $S(f)$, "->", label-side: right),
  edge((1, 0), (1, 1), $S(f)$, "->"),
)
