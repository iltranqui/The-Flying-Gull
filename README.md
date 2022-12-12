# The Flying Gull

## Table of Contents
* [General Info](#general-information)
* [Setup and Usage](#setup-and-usage)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)

# General Info
Frames change orientation and direction, but all refer to the world frame. 
With the prismatic constraint, the body of the gull is free to translate up and down, reacting to gravity in the -1 direction.
to add a better moving effect, an initial speed has been given.
The Translational rods and the Spherical joints are to emulate the flapping of the wings ( in the animation they can be easily hidden )
a Revolute linked to the gull's body allows the wings to flap in the correct orientation.

Note: no computation or calculation of the model has been performed, so mass/springs/velocity values have not been correctly adjusted. It is a tool to understand how the Modelica library and frames work. 

## Setup and Usage 
Using Dymola 2022 Student Edition for Simulation, but even [OpenModellica](https://www.openmodelica.org/) should be able to execute the script. 

## Colors of Objects ( for clarity )
* Wings: red
* MainBody: blue
* SphericalJoint: orange
* Translationjoint: brown

## Project Status
Project is: _in progress_ 

## Room for Improvement
- Problem: Not correct behaviour of the wings, which change side if the angle of the wings excede 90 degrees. 
- Make also the wings move along the y frame

## Acknoeledgements
- This project was based on [this tutorial](https://2011.international.conference.modelica.org/proceedings/pages/tutorials/008/Tutorial8_Multibody_Heckmann.pdf).

## Contact
Created by [@il.tranqui](https://github.com/iltranqui) - feel free to contact me! If someone uses this as a reference or for further development, I consider it as a win !
