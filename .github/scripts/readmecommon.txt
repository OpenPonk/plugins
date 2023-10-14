# Project, Model, Diagram

OpenPonk application is implemented in Pharo programming environment that can be described as a programming OS running in a VirtualBox-like virtual machine.
In the OpenPonk application, you may open multiple OpenPonk windows, each representing an OpenPonk project.
In each OP project, you may have multiple independent models.
Models alone contain elements, their properties and relations and do not have any information about visual representation.
Diagrams are those visual representation. One model can have many diagram representations and these diagrams may only show small part of a model.

# Saving

There are two independent saving systems. Option 1 is more convenient on a single computer, but not very safe, while option 2 is generally safer and its save file is more portable. You may actually use both options at once.

1) Saving OpenPonk environment:
	You may save whole OpenPonk application environment, including open windows, dialog popups, not-yet-properly-saved projects etc. This is very convenient as you save multiple projects at once and everything opens exactly like you saved it. However, if the OpenPonk application glitches and refuses to open, you lose everything that is only saved this way.
	It is saved into .image and .changes files inside image directory and these files can become very large and unsuitable for moving to other computers, versioning etc.

	How to save this way (2 alternatives):
		- In very top toolbar > Pharo > Save (or Save and Quit)
		- When attempting to close the OP app window, it asks if you want to save changes. Picking Save does exactly this kind of save.

	How to load this kind of save:
		- Just open OpenPonk application again

2) Saving a single project:
	You may save a single project to an .opp (OpenPonk Project) file, which is a zip file with various json/xml files with project metadata, models, diagrams etc.

	How to save this way:
		- In OpenPonk project's sub-window > Project > Save Project

	How to load this kind of save:
		- In very top toolbar > OpenPonk > Open Project...

# Settings

OpenPonk settings are available after opening Project window, then
OpenPonk > Settings

# Dragging/Moving elements

Whenever you are dragging elements of a diagram, they attempt to snap to center or sides of other nearby elements.
To disable snapping for the current drag, hold Alt key when dragging.
To permanently disable it, go to OpenPonk settings and set "Shapes checked for drag snapping" to 0

# Keyboard shortcuts

All keyboard shortcuts only work inside drawing area and there are currently no shortcuts for project itself.
Activating keyboard shortcuts sometimes needs clicking into canvas area once again, even if it is responding to mouse already.

Scroll diagram:	arrows
Zoom in/out:	+/-
Delete element:	Delete (with confirmation dialog) or Ctrl+Delete (without confirmation)
Hide element:	Ctrl+H
Save OpenPonk environment (option 1 save): Ctrl+Shift+S

