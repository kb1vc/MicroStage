# Description:

  Micro-positioning stage. 
 
  Author: radiogeek381@gmail.com

  A simple sliding table that can be positioned via a 4-40 or M3 screw. 
  
  It requires a 3D printer and a Flavia stick.  The stick is used for
  the linear bearing.  Other things might suffice, but I had some of
  these around.  
  
  ![A Flavia Stick](/pictures/FlaviaStick.jpg)
  
  ![The Stage](/pictures/MicroStage_V1.jpg)

# The Source

The source for the components is in OpenSCAD (http://www.openscad.org). It 
is better than STL for distribution, as normal humans can read and write it.

I try to provide some commentary in the source code where things aren't 
obvious or where I expect you'd want to make some changes.  Most of the
good comments are in Common.scad where all the dimensions are defined. 

# Printing

The prototypes and test widgets were printed on a Monoprice Maker Select Plus
using Silk PLA at 230C. The slide was printed flat side up, sitting on the four 
feet. This provides better dimensional control of the horizontal parts of 
the feet which must fit nicely inside the Flavia sticks. 

I used Cura version 3.6 for the slicer. (Yes, I know they're on to newer 
versions, but 3.6 works and I don't have to worry about losing a lot of
configuration data.)  The infill density was 30% and the support density 
was 10%.  YMMV and I didn't do an exhaustive study to find the perfect
combination.  

# Dimensions

All dimensions are in inches, since that's what I have in the way of
calipers.  Yes, it is kinda 19th century, but I've got a 21st century
computer in front of me that can multiply and divide by 25.4. 

That said, the models here are all set up for M3-0.5 screws.  That gets
you 500 microns per turn of the setscrew. Skip the coffee tomorrow morning
and you might get 10 micron resolution.  If you are reading this in 
black and white, then you may only have access to imperial hardware. 
A 4-40 screw and nut will work just fine. You'll get about 25 mils per turn
which ain't so bad for something you made in your basement. 

# Assembly

Pretty much as in the picture.  (See the picture. The background is the
seat cushion on my lab chair. Sometimes I use red felt, but the shiny 
red plastic doesn't show up so well.)  The design files here have added 
mounting holes at the corners of the base and slide.  This allows you to 
bolt a Y axis base onto an X axis slide, giving you *two* dimensions to 
fiddle.

I've found that cyanoacrylate will hold the Flavia sticks to the PLA. 
I wouldn't [hang a man in a hardhat from it,](https://www.youtube.com/watch?v=sZB7sO5ZoV8) but the bond is serviceable. 

# Performance

This is not a laboratory grade device.  It does work. (Or at least the single
axis version works.  The printer isn't done with the second set of parts yet.)
The lash in the movement isn't going to worry the folks at
Starrett any time soon.  If you obsess about such things, turn the
drive screw CCW to push the table *away* from the riser block.  Then turn
the screw head CW to draw the table *toward* the riser block. That
will probably get you the smoothest motion. 

If that isn't adequate, then a trip to Ebay will probably get you 
something that even the most discerning user would find suitable. 


There is no displacement indicator -- an indicator is superfluous for my 
purposes.  If it is important to you, I would encourage you to either
1. Design a solution and try it out.  When it works, post it to github. 
2. Take a look on Ebay where you will probably find something that 
even the most discerning user would find suitable. 

The travel is limited to the length of the "leadscrew."  The assortment
I bought from the "High Precision Machine Parts and Screen Door Company of Guangzhou" topped out at 20mm.  However, [Grainger](https://www.grainger.com/product/FABORY-M3-0-50mm-Machine-Screw-38EA26) has graciously offered to supply
me with 50mm screws for a modest charge. I suspect you could make 
similar arrangements. 


# License:
See the LICENSE file for copyright and conditions for re-use.

