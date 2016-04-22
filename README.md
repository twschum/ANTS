# EECS 373 W16 - A.N.T.S.
##Automated Nerf Turret System

Instructional Video:
https://www.youtube.com/watch?v=3GMys6n9Fig

Poster Diagram:
https://www.dropbox.com/s/7i1z1gdp6dh915y/final_poster_design_ANTS.png?dl=0

This is our final project for EECS 373. It is an automated turret that fires Nerf darts using compressed air. The system uses a laser pointer as the target that it is trying to hit.  Aiming is achieved using the Pixy computer vision camera to identify the location of the laser pointer relative to the aim of the barrel. It takes this information and uses a feedback loop to adjust where the gun is pointing until it is pointed directly at the laser dot, where it then fires a dart with high accuracy. The turret can also be fired manually using an N64 controller.

Pitch, Yaw aiming of the turret is achieved using geared continuous rotation servos. Four mechanical stop switches are mounted onto the system, which are used as range limiters. Once the turret hits the switch, it is prevented from turning any further in that direction. Status of the gun is displayed on the LCD graphics display, as well as the real time position of the laser pointer relative to the Pixy camera. Ultrasonic distance sensor used to determine how far away the turret is from the target in centimeters. Audio feedback is played over conventional desktop speakers using an onboard DAC to turn information from a .wav file into an analog signal that the speakers could play. 

Lights on the box act as a status indicator, with states as follows:
Maize and blue: idle mode (cannot fire)
Red: live fire mode (dart can be fired)
Green scanning: automatic mode (turret will track laser and shoot when on target)
Rainbow: reload mode (puts turret in easy position to chamber next dart)

A.N.T.S. Team Members: Ryan O’Keefe, Tim Schumacher, Colleen Martin, Jack Knudson
Credit to Adam Pastuzyn for the pneumatic nerf dart launcher design
