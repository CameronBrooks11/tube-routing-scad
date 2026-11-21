// MUST FAIL — SPINE-1: an arc's (u,v) basis must be orthonormal. A skewed basis
// silently produces an ellipse rather than a circle, and every arclength,
// tangent and transport derived from it is then wrong by an amount nothing
// measures.
use <../../src/uniTube.scad>;
p = ut_spine([ut_arc([ 0, 0, 0 ], [ 1, 0, 0 ], [ 0.6, 0.8, 0 ], 20, 90)]); // exactly unit, but u.v = 0.6 != 0
echo(len(ut_segs(p)));
cube(0.001);
