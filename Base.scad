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

module ScrewSlot(screw_dia, head_dia, head_depth, driver_dia, height) {
   // cut a slot (rather than a hole) in the riser block
   // to hold the leadscrew.  The leadscrew head will "float"
   // in the Z direction, relative to the slide to relieve
   // binding.
   //
   // There are three parts: the slot for the leadscrew threaded
   // part, the slot for the head, and the slot for the driver.
   //
   // For now, we'll do the metric M3 capscrew
   //
   // This slot is -- subtracted -- from the riser body.
   
   // The screw slot
   translate([0, 0.5 * height, 0]) cube([screw_dia, height, height], center=true);
   // the head slot
   cube([head_dia, head_depth, height], center=true);   
   // the driver slot
   translate([0, -0.5 * height, 0]) cube([driver_dia, height, height], center=true);
}


module RiserBlock() {
   difference() {
     cube([RiserW, RiserD, RiserH], center=true);
     union() {
       translate([0,0,RiserLeadScrewCenter - 0.5 * RiserH]) {
         ScrewSlot(RiserScrewHole, HeadSlotM3, HeadDM3, ShankM3, RiserD * 3);
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
	 MountingHoles();
       }
   }
}

scale([25.4,25.4,25.4]) {
 Base();
}