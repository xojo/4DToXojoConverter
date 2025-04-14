# 4DToXojoConverter

This project is for converting 4D forms to Xojo desktop windows.

The current version is 1.0b1.

# Supported 4D controls

Currently it can convert the following 4D controls:

* Button
* Checkbox
* Combo
* DropDown
* GroupBox
* Input
* Line
* List
* Oval
* PictureButton
* Progress
* Radio
* Rectangle
* Ruler
* Spinner
* Stepper
* Tab
* Text
* WebArea

# Unsupported 4D control

* ButtonGrid
* PicturePopup
* Splitter
* Subform

Subforms are actually supported as Xojo has the same concept though it's called a Container. However, using one requires dragging the Container from the project directly onto the window so as a result, the container's inclusion on the window can't be done automatically.

# Using the app

To use it, download the source and run or build it. The instructions on using it are on the main window which will open when you run the project.

# Bug reports and feature requests

If you find any bugs or have feature requests, click on Issues and create an issue for each one individually.

# Future enhancements

The following are ideas for improving the project:

* Add a library that provides the unsupported controls (all of which could be created as a subclass of the Xojo DesktopCanvas control) then update the project to refer to these controls instead of inserting an unsupported control placeholder.
* Add an option to convert the 4D form to a Xojo webpage rather than Xojo DesktopWindow. This should be done at the level of the methods that convert individual controls since Xojo desktop and Xojo web controls are so similar.
* An option to convert the entire Forms folder of a 4D project rather than one form at a time.
* An option to copy the method into the project and then insert the name of the called methods into the events since 4D provides implemented event names with the controls in the forms file.
* An option to convert the 4D database schema into a SQLite, MySQL or PostgreSQL schema.

# Contributing to the project

To contribute, use the standard git process to push your changes up to this project.