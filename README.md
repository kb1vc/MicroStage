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


# Dimensions

All dimensions are in inches, since that's what I have in the way of
calipers.  Yes, it is kinda 19th century, but I've got a 21st century
computer in front of me that can multiply and divide by 25.4. 

That said, the models here are all set up for M3-0.5 screws.  That gets
you 500 microns per turn of the setscrew. Skip the coffee tomorrow morning
and you might get 10 micron resolution.  

# Assembly

Pretty much as in the picture.  (See the picture. The background is the
seat cushion on my lab chair. Sometimes I use red felt, but the shiny 
red plastic doesn't show up so well.)  The design files here have added 
mounting holes at the corners of the base and slide.  This allows you to 
bolt a Y axis base onto an X axis slide, giving you *two* dimensions to 
fiddle.



# License:
See the LICENSE file for copyright and conditions for re-use.

