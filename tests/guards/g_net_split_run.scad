// MUST FAIL — a split (open) profile has no enclosed lumen, so it contributes
// nothing to the subtraction pass and cannot take part in a network.
use <../../src/uniTube.scad>;
r = ut_run("conduit", ut_polyline([[0, 0, 0], [40, 0, 0]]), ut_round(od=16, wall=2, split=[-30, 30]));
ut_assemble(ut_net([r]));
