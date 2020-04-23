// All dimensions in inches


$fn=32;

FlaviaOH = 0.185;
FlaviaIH = 0.11;
FlaviaOW = 0.71;
FlaviaIW = 0.55;
FlaviaSlotW = 0.27;
FlaviaMatThick = 0.032;

BaseT = 0.25;
BaseW = FlaviaOW * 4;
// for Test
// BaseL = 0.5;
BaseL = BaseW;



RiserW = BaseW * 0.25;
RiserD = 0.25;
RiserScrewHole = 0.135; // oversize for 0.1285

RiserScrewSlotW = 0.2;
RiserScrewSlotD = 0.2;
RiserScrewHeadDia = 0.25; // panhead 

SlotZ = BaseT - FlaviaOH + FlaviaMatThick;   

TeeH = 1.2 * FlaviaOH; // just to say

// When sitting in slide
SlideHeight = SlotZ + FlaviaMatThick + TeeH + BaseT;
RiserH = SlideHeight * 1.2;
RiserLeadScrewCenter = RiserH - (BaseT * 0.5);
SlideLeadScrewCenter = SlideHeight - (SlotZ + FlaviaMatThick) - (BaseT * 0.5);

SlotSp = FlaviaOW;

// remembering that everything is in inches.  (how embarassing)

Smidge = 0.025; // nearest metric is 0.6 mm.

// The original design said this: 
//   captive nuts need to be a tight (interference) fit in the
//   slot, as the difference between the longest and shortest chord
//   can be quite small (0.030 in the case of a 4-40 nut)
//   Both slot widths will be tight and require an "arbor press."
//   In the absence of an arbor press, one may use a thumb and a
//   coin.
//
// The original design was broken.
//
//   The captive nuts need to float a bit.  The pocket "depth" should
// be a little loose, even though we pay for this with a bit of lash.
//
//   Additionally, the screw head floats in a slot. This allows some
// freedom to align the screw in the base slot with the hole in the slide.
// Dimensional tolerances make lining up the holes between the base riser
// block and the slide platform difficult and fragile.  Small changes in
// printer resolution or the phase of the moon can cause the two holes
// not to line up.  So, the head floats.
// 
NutPocketW4_40 = 0.240;  // captive nut "dia" for 4-40 nut
NutPocketWM3 = 0.210;    // captive nut "dia" for M3 nut

NutPocketDepth = 0.095 + Smidge;

// In places where we need a little bit of play,
// this is our delta 


// The head slot widths need to be just a bit oversized,
// as we'd like most of the friction to be in the anti-lash
// part of the slot.
HeadSlot4_40 = 0.225 + Smidge; // head dia for 4-40 pan head
HeadSlotM3 = 0.21 + Smidge; // head dia for M3 cap screw

// This needs to be a little snug, but not tight.
// The difference in fit amounts to the lash in the
// system.  In general, I'd rather not care, and require
// "one direction only" movement of the slide.  But
// one should never foreclose opportunities for redemption
// (going a little bit too far). 
HeadD4_40 = 0.065 ; // head depth for 4-40 pan head
HeadDM3 = 0.120; // head depth for M3 cap screw

// A driver (either metric 2.5mm or imperial
Shank4_40 = 0.170 ;
ShankM3 = 0.150; // give a little bit for mis-alignment.

MountingHoleOffset = 0.2;
MountingHoleDia = RiserScrewHole;

module ScrewHole() {
  cylinder(d=RiserScrewHole, h = 10, center=true);
}

module MountingHoles() {
  // holes in the base and slide to allow the Y axis base to bolt
  // to the X axis slide
  // four corners.
  X = BaseW * 0.5 - MountingHoleOffset;
  Y = BaseL * 0.5 - MountingHoleOffset;  
  translate([X, Y, 0]) ScrewHole();
  translate([X, -Y, 0]) ScrewHole();  
  translate([-X, Y, 0]) ScrewHole();
  translate([-X, -Y, 0]) ScrewHole();  
}
