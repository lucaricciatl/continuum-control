# Soft Continuum Robot MATLAB Project

## Overview

This MATLAB project focuses on the kinematic and dynamic modeling, as well as control aspects, of a 2-section soft continuum robot with a planar shape. The soft robot is inspired by biological entities like octopus tentacles, snakes, and trunks. The project explores the advantages of using a Planar Constant Curvature (PCC) design over a rigid planar RR (Revolute-Revolute) design, incorporating new degrees of freedom and 3D printed soft materials.

## Project Components

### Kinematics Model (kinematics_model.m):
Define the kinematics model of the 3 degrees of freedom (DOF) continuum section.
Implement the inverse kinematics (IK) for a specific case of a 2-section PCC serial continuum robot in a planar case.
Dynamics Model (dynamics_model.m):
### Develop a closed dynamics model for the 2-section continuum robot.
Utilize the Lagrangian approach for dynamics evaluation, considering conservative elastic forces.
### Stability Analyses (stability_analysis.m):
Perform stability analyses based on the closed dynamics model.
Consider the effects of external forces and their impact on local pose and internal non-conservative forces.
Single Section Dynamics Simulation (single_section_simulation.m):
Simulate the dynamics of a single section of the continuum robot to understand its behavior in isolation.
### Workspace Analyses (workspace_analysis.m):
Analyze the workspace of the continuum robot, comparing the planar PCC configurations with planar RR configurations.
Highlight the 2π periodicity in the planar RR workspace and the richer set of configurations in the planar PCC workspace.
Control of the Soft Continuum Manipulator (control.m):
Develop control strategies for the soft continuum manipulator based on the obtained models.
Implement control algorithms considering the soft nature of the robot and the energetic considerations.
# Instructions

## Setup:
Ensure MATLAB is installed on your system.
Download the project files to your local machine.
## Execution:
Run each MATLAB script (.m file) to execute specific components of the project.
Follow the order outlined in the Overview section for a systematic approach.
## Customization:
Modify parameters, initial conditions, or algorithms as needed for your specific application.
Results:
Review the generated plots and output data to gain insights into the kinematics, dynamics, and control aspects of the soft continuum robot.
Documentation:
Refer to the comments within each script for detailed explanations of the code.
Consult the associated research papers or references for in-depth theoretical background.
##Notes
This project assumes a planar configuration for simplicity but can be extended to 3D if needed.
External forces and their effects on the robot's behavior are considered, but further research may be needed for a more accurate representation.

Presentation here : https://github.com/ATLED-3301/continuum---soft-robot/blob/main/continuum_anim.pptx

![](https://github.com/ATLED-3301/continuum---soft-robot/blob/main/imgs/photo_2021-10-12_19-08-23.jpg)
![](https://github.com/ATLED-3301/continuum---soft-robot/blob/main/imgs/photo_2021-10-12_22-45-45.jpg)
![](https://github.com/ATLED-3301/continuum---soft-robot/blob/main/imgs/ws3.jpg)
