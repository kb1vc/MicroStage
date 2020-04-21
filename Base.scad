include <Common.scad>

module BaseBlock() {
   cube([BaseW, BaseL, BaseT], center=true);
}

module Slot() {
   // a box around a flavia stick
   translate([0, 0, SlotZ]) {
      cube([FlaviaOW, BaseL * 1.1, FlaviaOH], center=true);
   }
}

module RiserBlock() {
   difference() {
     cube([RiserW, RiserD, RiserH], center=true);
     union() {
       translate([0,0,RiserLeadScrewCenter - 0.5 * RiserH]) {
         union() {
           rotate([90,0,0])
             cylinder(d=RiserScrewHole,h=3*RiserD,center=true);
	   translate([0,-0.4*RiserD,0])
             rotate([90,0,0])
    	       cylinder(d=RiserScrewHeadDia,h=0.5*RiserH);
	 }
       }
     }
   }
}

module Base() {
   translate([0,-0.5 * (BaseL - RiserD),0.5 * RiserH])
       RiserBlock();
   translate([0,0,0.5*BaseT])
   difference() {
       BaseBlock();	        
       union() { 
         translate([SlotSp * 1, 0, 0]) Slot();
         translate([-SlotSp * 1, 0, 0]) Slot();	 
       }
   }
}

scale([25.4,25.4,25.4]) {
  Base();

  translate([0.5 * (BaseW + RiserW) + 0.1, 0,0.5*RiserD]) rotate([-90,0,0]) RiserBlock();
}