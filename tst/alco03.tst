# ALCO, chapter 3
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("alco03.tst");

# doc/ALCO.xml:593-607
gap> J := AlbertAlgebra(Rationals);;
gap> x := Sum(Basis(J){[4,5,6,25,26,27]});
i4+i5+i6+ei+ej+ek
gap> [JordanRank(J), JordanDegree(J)];
[ 3, 8 ]
gap> [JordanRank(x), JordanDegree(x)];
[ 3, 8 ]
gap> p := GenericMinimalPolynomial(x);
[ 2, 0, -3, 1 ]
gap> Trace(x);
3
gap> Determinant(x);
-2
gap> Norm(x);
9/2

# doc/ALCO.xml:625-628
gap> J := SimpleEuclideanJordanAlgebra(3,8);
<algebra-with-one of dimension 27 over Rationals>
gap> Derivations(Basis(J));; SemiSimpleType(last);
"F4"

# doc/ALCO.xml:637-654
gap> J := JordanSpinFactor(IdentityMat(8));
<algebra-with-one of dimension 9 over Rationals>
gap> One(J);
v.1
gap> [JordanRank(J), JordanDegree(J)];
[ 2, 7 ]
gap> Derivations(Basis(J));
<Lie algebra of dimension 28 over Rationals>
gap> SemiSimpleType(last);
"D4"
gap> x := Sum(Basis(J){[4,5,6,7]});
v.4+v.5+v.6+v.7
gap> [Trace(x), Determinant(x)];
[ 0, -4 ]
gap> p := GenericMinimalPolynomial(x);
[ -4, 0, 1 ]
gap> ValuePol(p,x);
0*v.1

# doc/ALCO.xml:662-665
gap> J := HermitianSimpleJordanAlgebra(3,QuaternionD4Basis);
<algebra-with-one of dimension 15 over Rationals>
gap> [JordanRank(J), JordanDegree(J)];
[ 3, 4 ]

# doc/ALCO.xml:673-684
gap> J := SimpleEuclideanJordanAlgebra(2,7);
<algebra-with-one of dimension 9 over Rationals>
gap> u := Sum(Basis(J){[1,2,7,8]});
v.1+v.2+v.7+v.8
gap> Inverse(u);
(-1/2)*v.1+(1/2)*v.2+(1/2)*v.7+(1/2)*v.8
gap> GenericMinimalPolynomial(u);
[ -2, -2, 1 ]
gap> H := JordanHomotope(J, u, "w.");
<algebra-with-one of dimension 9 over Rationals>
gap> One(H);
(-1/2)*w.1+(1/2)*w.2+(1/2)*w.7+(1/2)*w.8

# doc/ALCO.xml:699-709
gap> A := AlbertAlgebra(Rationals);
<algebra-with-one of dimension 27 over Rationals>
gap> i := Basis(A){[1..8]};;
gap> j := Basis(A){[9..16]};;
gap> k := Basis(A){[17..24]};; 
gap> e := Basis(A){[25..27]};;
gap> Display(i); Display(j); Display(k); Display(e);
[ i1, i2, i3, i4, i5, i6, i7, i8 ]
[ j1, j2, j3, j4, j5, j6, j7, j8 ]
[ k1, k2, k3, k4, k5, k6, k7, k8 ]
[ ei, ej, ek ]

# doc/ALCO.xml:724-731
gap> j := Basis(AlbertAlgebra(Rationals)){[9..16]};
[ j1, j2, j3, j4, j5, j6, j7, j8 ]
gap> mat := AlbertVectorToHermitianMatrix(j[3]);; Display(mat);
[ [     0*e1,     0*e1,  (-1)*e3 ],
  [     0*e1,     0*e1,     0*e1 ],
  [       e3,     0*e1,     0*e1 ] ]
gap> HermitianMatrixToAlbertVector(mat);
j3

# doc/ALCO.xml:748-766
gap> J := JordanSpinFactor(IdentityMat(3));
<algebra-with-one of dimension 4 over Rationals>
gap> x := [-1,4/3,-1,1]*Basis(J);
(-1)*v.1+(4/3)*v.2+(-1)*v.3+v.4
gap> y := [-1, -1/2, 2, -1/2]*Basis(J);
(-1)*v.1+(-1/2)*v.2+(2)*v.3+(-1/2)*v.4
gap> JordanQuadraticOperator(x,y);
(14/9)*v.1+(-79/18)*v.2+(-11/9)*v.3+(-53/18)*v.4
gap> JordanQuadraticOperator(x);; Display(last);
[ [  43/9,  -8/3,     2,    -2 ],
  [  -8/3,   7/9,  -8/3,   8/3 ],
  [     2,  -8/3,  -7/9,    -2 ],
  [    -2,   8/3,    -2,  -7/9 ] ]
gap> LinearCombination(Basis(J), JordanQuadraticOperator(x)*ExtRepOfObj(y)) = JordanQuadraticOperator(x,y);
true
gap> ExtRepOfObj(JordanQuadraticOperator(x,y)) = JordanQuadraticOperator(x)*ExtRepOfObj(y);
true
gap> JordanQuadraticOperator(2*x) = 4*JordanQuadraticOperator(x);
true

# doc/ALCO.xml:777-794
gap> J := AlbertAlgebra(Rationals);
<algebra-with-one of dimension 27 over Rationals>
gap> i := Basis(J){[1..8]};
[ i1, i2, i3, i4, i5, i6, i7, i8 ]
gap> j := Basis(J){[9..16]};
[ j1, j2, j3, j4, j5, j6, j7, j8 ]
gap> k := Basis(J){[17..24]};
[ k1, k2, k3, k4, k5, k6, k7, k8 ]
gap> e := Basis(J){[25..27]};
[ ei, ej, ek ]
gap> List(i, x -> JordanTripleSystem(i[1],i[1],x));
[ i1, i2, i3, i4, i5, i6, i7, i8 ]
gap> List(j, x -> 2*JordanTripleSystem(i[1],i[1],x));
[ j1, j2, j3, j4, j5, j6, j7, j8 ]
gap> List(k, x -> 2*JordanTripleSystem(i[1],i[1],x));
[ k1, k2, k3, k4, k5, k6, k7, k8 ]
gap> List(e, x -> JordanTripleSystem(i[1],i[1],x));
[ 0*i1, ej, ek ]

# doc/ALCO.xml:808-823
gap> H := QuaternionAlgebra(Rationals);;
gap> for x in HermitianJordanAlgebraBasis(2, Basis(H)) do Display(x); od;
[ [    e,  0*e ],
  [  0*e,  0*e ] ]
[ [  0*e,  0*e ],
  [  0*e,    e ] ]
[ [  0*e,    e ],
  [    e,  0*e ] ]
[ [     0*e,       i ],
  [  (-1)*i,     0*e ] ]
[ [     0*e,       j ],
  [  (-1)*j,     0*e ] ]
[ [     0*e,       k ],
  [  (-1)*k,     0*e ] ]
gap> AsList(Basis(H));
[ e, i, j, k ]

# doc/ALCO.xml:838-857
gap> H := QuaternionAlgebra(Rationals);;
gap> J := HermitianSimpleJordanAlgebra(2,Basis(H));
<algebra-with-one of dimension 6 over Rationals>
gap> AsList(CanonicalBasis(J));
[ v.1, v.2, v.3, v.4, v.5, v.6 ]
gap> JordanMatrixBasis(J);; for x in last do Display(x); od;
[ [    e,  0*e ],
  [  0*e,  0*e ] ]
[ [  0*e,  0*e ],
  [  0*e,    e ] ]
[ [  0*e,    e ],
  [    e,  0*e ] ]
[ [     0*e,       i ],
  [  (-1)*i,     0*e ] ]
[ [     0*e,       j ],
  [  (-1)*j,     0*e ] ]
[ [     0*e,       k ],
  [  (-1)*k,     0*e ] ]
gap> List(JordanMatrixBasis(J), x -> HermitianMatrixToJordanVector(x, J));
[ v.1, v.2, v.3, v.4, v.5, v.6 ]

# doc/ALCO.xml:865-870
gap> J := HermitianSimpleJordanAlgebra(2,OctonionE8Basis);
<algebra-with-one of dimension 10 over Rationals>
gap> List(Basis(J), x -> List(Basis(J), y -> Trace(x*y))) = JordanAlgebraGramMatrix(J);
true
gap> DiagonalOfMat(JordanAlgebraGramMatrix(J));
[ 1, 1, 2, 2, 2, 2, 2, 2, 2, 2 ]

#
gap> STOP_TEST("alco03.tst", 1);
