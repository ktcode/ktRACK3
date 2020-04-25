//
// ktRACK3
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

X = 60;
Y = 40;
Z = 30;


key_pitch_x = 19;
key_pitch_y = 19;
hole_x = 14;
hole_y = 14;
keybase_thick = 5;


difference()
{
    union()
    {
        translate([0, 0, 0]) cube([15, 35, panel_thick]);
        translate([15/2, 8, -3]) rotate([-45, 0, 0]) cylinder( 23, d=5, $fn=100);
    }
    translate([15/2, 5, -gap1]) rotate([0, 0, 0]) cylinder(  panel_thick+gap2, d1=3, d2=5, $fn=100);
    translate([15/2, 35-5, -gap1]) rotate([0, 0, 0]) cylinder(  panel_thick+gap2, d1=3, d2=5, $fn=100);
    
    translate([0, 0, -30]) cube([15, 30, 30]);
}
