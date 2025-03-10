# Wolfram Project in Haskell

## Description
This project is an implementation of Wolfram's elementary cellular automata in Haskell. The goal is to simulate the evolution of a one-dimensional cellular automaton based on a given rule and initial state.

## Features
- Supports all Wolfram rules.
- Displays the evolution of the automaton over multiple generations.
- Command-line interface for customization.

## Usage

### Clone the Repository
```sh
git clone git@github.com:nailec1911/wolframe.git
cd wolfram
```

## Install haskell
Maybe not needed
I am too lazy to do this part

### Compilation
To compile the project, run:
```sh
make
```

### Running the Program
Execute the compiled binary with:
```sh
./wolfram <rule> <size> <generations>
```
Example:
```sh
USAGE:

./wolfram --rule value [--start value] [--lines value] [--window value] [--move value]

--rule    ->   select the rule to apply
--start   ->   the first line of the generation to display
--lines   ->   the number of lines to display
--window  ->   the size of the display window
--move    ->   translation to apply to the window (right if positive, left if negative)
```

## Example Output
For `./wolfram --rule 30 --start 5 --lines 10  --window 10 --move 10`, the output might look like:
```
          
         *
        **
       ** 
      ** *
     **  *
    ** ***
   **  *  
  ** **** 
 **  *    
```

## Displayers

Make sure you have installed `feh` for this part.

In ``bonus/`` you can find two binaries :

### 1. ``display.sh``

It's the same as wolframe, but it displays the image in black and white with feh.

To do that, we call the wolframe and then convert the . and # to a ppm image and display it with feh.

ex : ``./bonus/display.sh 122`` will display an image of the rule 122.

### 2. ``loop_diplay.sh``

usage:
```sh
./loop_display
```

It will loop throught all rules and display them.

### Usages

For booth of these we can specify more infos (same as the wolframe).
To do that, just add the numbers in this order : rule, window, lines, start, move.
ex:
```sh
./bonus/display.sh 30 10 10 5 10
```
will provide the same output as:
```sh
./wolfram --rule 30 --start 5 --lines 10  --window 10 --move 10
```

For loop display, do not specify the rule, so you have :
```sh
./bonus/loop_display.sh 10 10 5 10
```
