#import "@preview/fletcher:0.5.8": diagram, edge, node

#let triangle(
  top: $Y$,
  bottom: $Z$,
  upper: $phi$,
  lower: $psi$,
  vertical: $chi$,
  dashed: false,
  closed: true,
) = diagram(
  cell-size: (24mm, 12mm),
  node((0, 0.5), $X$),
  node((1, 0), top),
  node((1, 1), bottom),
  edge((0, 0.5), (1, 0), upper, "->"),
  edge((0, 0.5), (1, 1), lower, "->", label-side: right),
  if closed {
    edge((1, 0), (1, 1), vertical, if dashed { "-->" } else { "->" })
  },
)

#let natural-square() = diagram(
  cell-size: (30mm, 17mm),
  node((0, 0), $F_(1)(A)$),
  node((1, 0), $F_(1)(B)$),
  node((0, 1), $F_(2)(A)$),
  node((1, 1), $F_(2)(B)$),
  edge((0, 0), (1, 0), $F_(1)(psi)$, "->"),
  edge((0, 1), (1, 1), $F_(2)(psi)$, "->"),
  edge((0, 0), (0, 1), $phi(A)$, "->", label-side: right),
  edge((1, 0), (1, 1), $phi(B)$, "->"),
)

#let equivalence-square(inverse: false) = diagram(
  cell-size: (24mm, 17mm),
  node((0, 0), $A$),
  node((1, 0), $B$),
  node((0, 1), $A_0$),
  node((1, 1), $A_0$),
  edge((0, 0), (1, 0), $beta$, "->"),
  edge((0, 1), (1, 1), $F(beta)$, "->"),
  if inverse {
    edge((0, 0), (0, 1), $psi(A)$, "->", label-side: right)
    edge((1, 0), (1, 1), $psi(B)$, "->")
  } else {
    edge((0, 1), (0, 0), $phi(A)$, "->")
    edge((1, 1), (1, 0), $phi(B)$, "->", label-side: right)
  },
)
