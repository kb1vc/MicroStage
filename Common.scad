// All dimensions in inches


$fn=32;

FlaviaOH = 0.185;
FlaviaIH = 0.11;
FlaviaOW = 0.71;
FlaviaIW = 0.55;
FlaviaSlotW = 0.28;
FlaviaMatThick = 0.032;

BaseW = FlaviaOW * 4;
// for Test
BaseL = BaseW;
//BaseL = 0.5;
BaseT = 0.25;

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
RiserH = SlideHeight;
RiserLeadScrewCenter = RiserH - (BaseT * 0.5);
SlideLeadScrewCenter = SlideHeight - (SlotZ + FlaviaMatThick) - (BaseT * 0.5);

SlotSp = FlaviaOW;

