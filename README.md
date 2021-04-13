# Wolfram
implementation of rule 30, 90 and 110 of the Wolfram’s elementary cellular automaton, in Haskell

This is a stack environement. You have to install ``stack`` package.

``stack build`` to build the executable.

``make`` to build the executable and move it in the project's root 

# Usage:

``./wolfram --rule [val] --start [val] --lines [val] --window [val] --move [val]``

``--rule`` : the ruleset to use (no default value, mandatory).

``-–start`` : the generation number at which to start the display. The default value is 0.

``-–lines`` : the number of lines to display. When homited, the program never stops.

``-–window`` : the number of cells to display on each line (line width). If even,the central cell is displayed in the next cell on the right. The default value is 80.

``-–move`` : a translation to apply on the window. If negative, the window is translated to the left.If positive, it’s translated to the right.


``[val]`` : any integer value
