// MUST FAIL — SPINE-4. Arcs are capped at 180 degrees so the tangent sign can
// never be ambiguous; larger sweeps must be split by the constructor.
use <../../src/uniTube.scad>;
a = ut_arc([0, 0, 0], [1, 0, 0], [0, 1, 0], 10, 270);
echo(a[5]);
cube(0.001);
