Hello,

Welcome to my version of mars rovers.  I made three basic classes for my design of the project.  They are:

-Rover
  This class creates individual rovers that encapsulate their position, direction, and their instructions.  The instructions use the movement methods(turn_left, turn_right, and move) to relocate the rover.

-Board
  This class just provides a structure for the rovers to move around on.  I chose a nested set of arrays because the syntax of @board[x][y] seemed to me to most closely represent mathmatical graphing.  The board also has knowledge of the entities that are present on it.

-Controller
  This class takes the input information from the input file and provides a method for outputting the results.

Assumptions
  -Robots will not be programmed to go off the plateau.
  -The desired output method is STDOUT.
  -Robots do not need to know all locations they have passed.

To setup and run the application, follow these steps:

1.  bundle
2.  rspec spec
3.	ruby run_me.rb file_name
