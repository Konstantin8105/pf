package pf

func ExampleCh04() {

	Nodes := []Node{
		{0.0, 0.0},
		{-10.0, 0.0},
		{10.0, 0.0},
		{0.0, 0.5},
	}

	Elements := []Element {
		{Type: TrussElem, Nodes: []int{1,3}},
		{Type: TrussElem, Nodes: []int{2,3}},
		{Type: StringElem, Nodes:[]int{0,3}},
	}

	// <NodeConstraints>
	//   u[1] = 0.0;
	//   u[2] = 0.0;
	//   u[3] = 0.0;
	//
	//   v[1] = 0.0;
	//   v[2] = 0.0;
	//   v[3] = 0.0;
	// </NodeConstraints>
	//
	// <ExternalForces>
	//   v[4] = -100.0 ;
	// </ExternalForces>
	//
	//
	// TrussElem  =
	// {
	//   type = "Truss";
	//   E    = 5e6;
	//   Area = 1.0;
	// };
	//
	// SpringElem =
	// {
	//   type = "Spring";
	//   k    = 100.0;
	// };
	//
	// solver =
	// {
	//   type = 'RiksSolver';
	//
	//   fixedStep = true;
	//   maxLam    = 10.0;
	// };
	//
	// outputModules = ["graph"];
	//
	// graph =
	// {
	//   type = "GraphWriter";
	//
	//   onScreen = true;
	//
	//   columns = [ "disp" , "load" ];
	//
	//   disp =
	//   {
	//     type = "state";
	//     node = 4;
	//     dof  = 'v';
	//     factor = -1.0;
	//   };
	//
	//   load =
	//   {
	//     type = "fint";
	//     node = 4;
	//     dof  = 'v';
	//     factor = -1.0;
	//   };
	// };
	// Output:
}
