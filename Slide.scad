include <Common.scad>


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
     LeadScrewHole();
  }
}

scale([25.4,25.4,25.4]) {
  Slide();
//  Tee();
}