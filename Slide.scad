include <Common.scad>

module Nut(min_chord, depth) {
  // radius of minimal enclosing circle is
  r = min_chord  / sqrt(3) ; // angles in degrees.
  echo("min_chord ", min_chord, " rad " , r, " cos 30 ", cos(30));
  points = [ 
    for(angle = [30:60:350]) [ cos(angle) * r, sin(angle) * r ]
    ];

  echo(depth);
  echo(points);
  linear_extrude(depth) { polygon(points); }
}

// Add captive nut pocket
module NutPocket(nut_dia, nut_thickness, screw_dia) {
  translate([-0.5*nut_dia, -nut_thickness, -2]) cube([nut_dia, nut_thickness, 10]);
  rotate([90,0,0])  {
    // stack a cube slot above it, baseline on yz plane
    //translate([-0.5*nut_dia, 0, -2])
    //  cube([nut_dia, 10, nut_thickness]);    // Add the screw hole
    cylinder(d=screw_dia, h = 1000, center=true);
  }
}

module SlideBlock() {
   translate([0,0,0.5*BaseT]) cube([BaseW, BaseL, BaseT], center=true);
}

module Tee() {
  // fits in the flavia stick slot
  union() {
    translate([0,0,0.5* FlaviaIH]) cube([FlaviaIW, BaseL, FlaviaIH], center=true);
    translate([0,0,0.5*TeeH]) cube([FlaviaSlotW, BaseL, TeeH], center=true);
  }
}

module TeePair() {
  difference() {
    union() {
      translate([SlotSp * 1, 0, 0]) Tee();
      translate([-SlotSp * 1, 0, 0]) Tee();
    }
    cube([BaseW, BaseL - 1.0,3*TeeH], center=true);
  }	
}

 
module LeadScrewHole() {
  translate([0,0,SlideLeadScrewCenter]) 
    rotate([90,0,0])
      cylinder(d=RiserScrewHole,h=2*BaseL, center=true);
}

module Slide() {
  difference() {
     union() {
       translate([0,0,TeeH - 0.001]) SlideBlock();	        
       TeePair();
     }
     union() {
       translate([0, 0.5*BaseL - NutPocketDepth, SlideLeadScrewCenter]) NutPocket(NutPocketWM3, NutPocketDepth, RiserScrewHole);
       MountingHoles();
     }
  }
}

scale([25.4,25.4,25.4]) {
  Slide();
}