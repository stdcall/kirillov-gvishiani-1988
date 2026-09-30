// A commuting triangle, determined by its three objects and three arrows.
#import "@preview/fletcher:0.5.8": diagram, edge, node

#let triangle(
  left-object,
  top-object,
  bottom-object,
  top-map,
  bottom-map,
  right-map,
) = {
  set text(bottom-edge: "bounds")
  stack(diagram(
    cell-size: (23mm, 9mm),
    spacing: 0pt,
    node-shape: rect,
    node-inset: 1mm,
    edge-stroke: 0.5pt,
    label-size: 0.9em,
    node((0, 1), left-object),
    node((1, 0), top-object),
    node((1, 2), bottom-object),
    edge((0, 1), (1, 0), top-map, "->"),
    edge((0, 1), (1, 2), bottom-map, "->", label-side: right),
    edge((1, 0), (1, 2), right-map, "->", label-side: left),
  ))
}
