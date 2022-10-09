package pf

/*

import sys,os
sys.path.insert(0, os.getcwd() )

from pyfem.io.InputReader   import InputRead
from pyfem.io.OutputManager import OutputManager
from pyfem.solvers.Solver   import Solver

def run( fileName ):

  props,globdat = InputRead( fileName )

  solver = Solver        ( props , globdat )
  output = OutputManager ( props , globdat )

  while globdat.active:
    solver.run( props , globdat )
    output.run( props , globdat )

  print("PyFem analysis terminated successfully.")
*/

func Run(filename string) error {
	props, globdat := InputRead(filename)

	solver := Solver(props, globdat)
	output := OutputManager(props, globdat)

	for globdat.active {
		solver.run(props, globdat)
		output.run(props, globdat)
	}

}

/*
def readInput( fileName ):

  props,globdat = InputRead( fileName )

  solver = Solver        ( props , globdat )
  output = OutputManager ( props , globdat )

  globdat.props = props

  return globdat

def calcSingleStep( globdat ):

  solver.run( globdat.props , globdat )
*/
