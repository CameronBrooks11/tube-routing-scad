// MUST FAIL — PROF-2, count half. The ring-strip end cap requires one inner
// point per outer point.
use <../../src/uniTube.scad>;
p = ut_profile(ut_ring(6, 32), ut_ring(4, 16));
echo(len(ut_prof_outer(p)));
cube(0.001);
