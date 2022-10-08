#!/bin/bash

echo "open folder"
cd ./PyFEM

echo "install"
python3 ./install.py

echo "ch01"
cd examples/ch01
python3 ./ShallowTrussStructure.py  2>&1  > ShallowTrussStructure.result

echo "ch02"
cd ../ch02
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./PatchTest3  2>&1          > PatchTest3.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./PatchTest4  2>&1          > PatchTest4.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./PatchTest8  2>&1          > PatchTest8.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./PatchTest8_3D  2>&1       > PatchTest8_3D.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./ThreePointBending  2>&1   > ThreePointBending.result

echo "ch03"
cd ../ch03
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./cantilever8  2>&1 > cantilever8.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./cantilever8PrescribedDisp  2>&1  > cantilever8PrescribedDisp.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./NewtonRaphson  2>&1  > NewtonRaphson.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./NewtonRaphson3D  2>&1  > NewtonRaphson3D.result

echo "ch04"
cd ../ch04
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	./ShallowtrussRiks  2>&1  > ShallowtrussRiks.result 

echo "ch05"
cd ../ch05
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	StressWave_20x20  2>&1  > StressWave_20x20.result

echo "ch06"
cd ../ch06
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	ContDamExample  2>&1  > ContDamExample.result

echo "ch09"
cd ../ch09
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	Frame  2>&1  > Frame.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	Frame2  2>&1  > Frame2.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	FrameKirchhoff  2>&1  > FrameKirchhoff.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	KirchhoffEuler  2>&1  > KirchhoffEuler.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	KirchhoffEuler_01  2>&1  > KirchhoffEuler_01.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	KirchhoffEuler_1  2>&1  > KirchhoffEuler_1.result

echo "ch13"
cd ../ch13
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	PeelTest 2>&1 > PeelTest.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	PeelTest100 2>&1 > PeelTest100.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	PeelTest40 2>&1 > PeelTest40.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	PeelTest60 2>&1 > PeelTest60.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	PeelTest80 2>&1 > PeelTest80.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	TractionOscillations 2>&1 > TractionOscillations.result

echo "elements/axisymmetric"
cd ../elements/axisymmetric
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	axisymmetric_finitestrain4 2>&1 > axisymmetric_finitestrain4.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	axisymmetric_smallstrain4.dat 2>&1 > axisymmetric_smallstrain4.result
cd ..

echo "gmsh"
cd ../gmsh
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	two_fibres > two_fibres.result

echo "materials/plasticity"
cd ../materials/plasticity
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	dogbone	> dogbone.result
cd ..

echo "plate"
cd ../plate
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	plate_test_01 > plate_test_01.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	plate_test_02 > plate_test_02.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	plate_test_03 > plate_test_03.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	plate_test_04 > plate_test_04.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	plate_test_05 > plate_test_05.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	plate_test_06 > plate_test_06.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	plate_test_07 > plate_test_07.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	platedyn > platedyn.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	platedynSS > platedynSS.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	platetest > platetest.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	platetest2 > platetest2.result

echo "solver/dissipatedEnergySolver"
cd ../solver/dissipatedEnergySolver
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	delam_buckling100 > delam_buckling100.result
python3 /home/konstantin/go/src/github.com/Konstantin8105/pf/PyFEM/PyFEM.py \
	delam_buckling200 > delam_buckling200.result
cd ..

cd ..
echo "DONE"
