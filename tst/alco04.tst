# ALCO, chapter 4
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("alco04.tst");

# doc/ALCO.xml:1084-1092
gap> a := Indeterminate(Rationals, "a");; 
gap> b := Indeterminate(Rationals, "b");; 
gap> x := Indeterminate(Rationals, "x");;
gap> JacobiPolynomial(0,a,b);
[ 1 ]
gap> JacobiPolynomial(1,a,b);
[ 1/2*a-1/2*b, 1/2*a+1/2*b+1 ]
gap> ValuePol(last,x);
1/2*a*x+1/2*b*x+1/2*a-1/2*b+x

# doc/ALCO.xml:1127-1138
gap> D := DesignByJordanParameters(3,8);
<design with rank 3 and degree 8>
gap> IsDesign(D);
true
gap> IsSphericalDesign(D);
false
gap> IsProjectiveDesign(D);
true
gap> DesignByJordanParameters(4,8);
fail
gap> DesignByJordanParameters(3,9);
fail

# doc/ALCO.xml:1147-1150
gap> D := DesignByJordanParameters(3,8);
<design with rank 3 and degree 8>
gap> [DesignJordanRank(D), DesignJordanDegree(D)];
[ 3, 8 ]

# doc/ALCO.xml:1159-1168
gap> D := DesignByJordanParameters(3,8);
<design with rank 3 and degree 8>
gap> r := DesignJordanRank(D);; d := DesignJordanDegree(D);;
gap> x := Indeterminate(Rationals, "x");;
gap> DesignQPolynomials(D);
function( k ) ... end
gap> DesignQPolynomials(D)(2);
[ 90, -585, 819 ]
gap> CoefficientsOfUnivariatePolynomial(Q_k_epsilon(2,0,r,d,x));
[ 90, -585, 819 ]

# doc/ALCO.xml:1179-1193
gap> D := DesignByJordanParameters(3,8);
<design with rank 3 and degree 8>
gap> DesignConnectionCoefficients(D);
function( s ) ... end
gap> f := DesignConnectionCoefficients(D)(3);; Display(f);
[ [        1,        0,        0,        0 ],
  [      1/3,     1/39,        0,        0 ],
  [     5/39,    5/273,    1/819,        0 ],
  [     5/91,     1/91,    1/728,  1/12376 ] ]
gap> for j in [1..4] do Display(Sum(List([1..4], i -> 
> f[j][i]*DesignQPolynomials(D)(i-1)))); od;
[ 1, 0, 0, 0 ]
[ 0, 1, 0, 0 ]
[ 0, 0, 1, 0 ]
[ 0, 0, 0, 1 ]

# doc/ALCO.xml:1224-1233
gap> D := DesignByJordanParameters(4,4);
<design with rank 4 and degree 4>
gap> DesignAddAngleSet(D, [2]);
fail
gap> D;
<design with rank 4 and degree 4>
gap> DesignAddAngleSet(D, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> DesignAngleSet(D);
[ 1/9, 1/3 ]

# doc/ALCO.xml:1241-1244
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> DesignAngleSet(D);
[ 1/9, 1/3 ]

# doc/ALCO.xml:1254-1263
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> p := DesignNormalizedAnnihilatorPolynomial(D);
[ 1/16, -3/4, 27/16 ]
gap> ValuePol(p, 1/9);
0
gap> ValuePol(p, 1/3);
0
gap> ValuePol(p, 1);
1

# doc/ALCO.xml:1273-1280
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> f := DesignNormalizedIndicatorCoefficients(D);
[ 1/64, 7/960, 9/3520 ]
gap> Sum(List([1..3], i -> f[i]*DesignQPolynomials(D)(i-1)));
[ 1/16, -3/4, 27/16 ]
gap> DesignNormalizedAnnihilatorPolynomial(D);
[ 1/16, -3/4, 27/16 ]

# doc/ALCO.xml:1298-1303
gap> D := DesignByAngleSet(4, 4, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> IsDesignWithPositiveIndicatorCoefficients(D);
true
gap> DesignSpecialBound(D);
64

# doc/ALCO.xml:1325-1332
gap> D := DesignByAngleSet(4,4, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> HasDesignCardinality(D);
false
gap> DesignAddCardinality(D, 64);
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignCardinality(D);
64

# doc/ALCO.xml:1353-1359
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);; 
gap> DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignAnnihilatorPolynomial(D);
[ 4, -48, 108 ]
gap> ValuePol(last, 1);
64

# doc/ALCO.xml:1369-1372
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignIndicatorCoefficients(D);
[ 1, 7/15, 9/55 ]

# doc/ALCO.xml:1392-1399
gap> D := DesignByAngleSet(4,4, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> DesignAddCardinality(D, 64);
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> IsDesignWithStrength(D);
true
gap> DesignStrength(D);
2

# doc/ALCO.xml:1444-1447
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignSubdegrees(D);
[ 27, 36 ]

# doc/ALCO.xml:1464-1471
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> B := DesignBoseMesnerAlgebra(D);
<algebra of dimension 3 over Rationals>
gap> BasisVectors(CanonicalBasis(B));
[ A1, A2, A3 ]
gap> One(B);
A3

# doc/ALCO.xml:1480-1488
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> for x in BasisVectors(DesignBoseMesnerIdempotentBasis(D)) do Display(x); 
> od;
(-5/64)*A1+(3/64)*A2+(27/64)*A3
(1/16)*A1+(-1/16)*A2+(9/16)*A3
(1/64)*A1+(1/64)*A2+(1/64)*A3
gap> ForAll(DesignBoseMesnerIdempotentBasis(D), IsIdempotent);
true

# doc/ALCO.xml:1500-1505
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> A := BasisVectors(Basis(DesignBoseMesnerAlgebra(D)));;
gap> p := DesignIntersectionNumbers(D);;
gap> A[1]*A[2] = Sum(List([1..3]), k -> p[k][1][2]*A[k]);
true

# doc/ALCO.xml:1519-1526
gap> D := DesignByAngleSet(4, 4, [1/3, 1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> q := DesignKreinNumbers(D);; 
gap> Display(q);
[ [ [ 10, 16, 1 ], [ 16, 20, 0 ], [ 1, 0, 0 ] ], 
  [ [ 12, 15, 0 ], [ 15, 20, 1 ], [ 0, 1, 0 ] ], 
  [ [ 27, 0, 0 ], [ 0, 36, 0 ], [ 0, 0, 1 ] ] ]
  

# doc/ALCO.xml:1539-1545
gap> D := DesignByAngleSet(4,4,[1/3,1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> a := Basis(DesignBoseMesnerAlgebra(D));;
gap> e := DesignBoseMesnerIdempotentBasis(D);;
gap> ForAll([1..3], i -> a[i] = Sum([1..3], j ->
> DesignFirstEigenmatrix(D)[i][j]*e[j]));
true

# doc/ALCO.xml:1558-1567
gap> D := DesignByAngleSet(4,4,[1/3,1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> a := Basis(DesignBoseMesnerAlgebra(D));;
gap> e := DesignBoseMesnerIdempotentBasis(D);;
gap> ForAll([1..3], i -> e[i]*DesignCardinality(D) =
> Sum([1..3], j -> DesignSecondEigenmatrix(D)[i][j]*a[j]));
true
gap> DesignFirstEigenmatrix(D) = Inverse(DesignSecondEigenmatrix(D))
> *DesignCardinality(D);
true

# doc/ALCO.xml:1578-1581
gap> D := DesignByAngleSet(4,4,[1/3,1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignMultiplicities(D);
[ 27, 36, 1 ]

# doc/ALCO.xml:1592-1595
gap> D := DesignByAngleSet(4,4,[1/3,1/9]);; DesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignValencies(D);
[ 27, 36, 1 ]

# doc/ALCO.xml:1615-1656
gap> DesignByAngleSet(2, 1, [0,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 3-design with rank 2, degree 1, cardinality 4, and angle set 
[ 0, 1/2 ]> 
gap> DesignByAngleSet(2, 2, [0,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 3-design with rank 2, degree 2, cardinality 6, and angle set
[ 0, 1/2 ]>
gap> DesignByAngleSet(2, 4, [0,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 3-design with rank 2, degree 4, cardinality 10, and angle set
[ 0, 1/2 ]>
gap> DesignByAngleSet(2, 8, [0,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 3-design with rank 2, degree 8, cardinality 18, and angle set
[ 0, 1/2 ]>
gap> DesignByAngleSet(3, 2, [1/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 2-design with rank 3, degree 2, cardinality 9, and angle set [ 1/4 ]>
gap> DesignByAngleSet(4, 2, [0,1/3]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 3-design with rank 4, degree 2, cardinality 40, and angle set
[ 0, 1/3 ]>
gap> DesignByAngleSet(6, 2, [0,1/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 3-design with rank 6, degree 2, cardinality 126, and angle set
[ 0, 1/4 ]>
gap> DesignByAngleSet(8, 2, [1/9]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 2-design with rank 8, degree 2, cardinality 64, and angle set [ 1/9 ]>
gap> DesignByAngleSet(5, 4, [0,1/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 3-design with rank 5, degree 4, cardinality 165, and angle set
[ 0, 1/4 ]>
gap> DesignByAngleSet(3, 8, [0,1/4,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 5-design with rank 3, degree 8, cardinality 819, and angle set
[ 0, 1/4, 1/2 ]>
gap> DesignByAngleSet(24, 1, [0,1/16,1/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 5-design with rank 24, degree 1, cardinality 98280, and angle set
[ 0, 1/16, 1/4 ]>

# doc/ALCO.xml:1660-1664
gap> DesignByAngleSet(2, 2, [ 0, (5-Sqrt(5))/10, (5+Sqrt(5))/10 ]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 5-design with rank 2, degree 2, cardinality 12, and angle set
[ 0, -3/5*E(5)-2/5*E(5)^2-2/5*E(5)^3-3/5*E(5)^4,
  -2/5*E(5)-3/5*E(5)^2-3/5*E(5)^3-2/5*E(5)^4 ]>

# doc/ALCO.xml:1670-1697
gap> DesignByAngleSet(2, 23, [ 0, 1/4, 3/8, 1/2, 5/8, 3/4 ]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 11-design with rank 2, degree 23, cardinality 196560, and angle set
[ 0, 1/4, 3/8, 1/2, 5/8, 3/4 ]>
gap> DesignByAngleSet(2, 5, [ 1/4, 5/8 ]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 4-design with rank 2, degree 5, cardinality 27, and angle set
[ 1/4, 5/8 ]>
gap> DesignByAngleSet(2, 6, [0,1/3,2/3]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 5-design with rank 2, degree 6, cardinality 56, and angle set
[ 0, 1/3, 2/3 ]>
gap> DesignByAngleSet(2, 21, [3/8, 7/12]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 4-design with rank 2, degree 21, cardinality 275, and angle set
[ 3/8, 7/12 ]>
gap> DesignByAngleSet(2, 22, [0,2/5,3/5]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 5-design with rank 2, degree 22, cardinality 552, and angle set
[ 0, 2/5, 3/5 ]>
gap> DesignByAngleSet(2, 7, [0,1/4,1/2,3/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 7-design with rank 2, degree 7, cardinality 240, and angle set
[ 0, 1/4, 1/2, 3/4 ]>
gap> DesignByAngleSet(2, 22, [0,1/3,1/2,2/3]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<Tight 7-design with rank 2, degree 22, cardinality 4600, and angle set
[ 0, 1/3, 1/2, 2/3 ]>

# doc/ALCO.xml:1702-1747
gap> DesignByAngleSet(4, 4, [0,1/4,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<3-design with rank 4, degree 4, cardinality 180, and angle set
[ 0, 1/4, 1/2 ]>
gap> DesignByAngleSet(3, 2, [0,1/3]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<2-design with rank 3, degree 2, cardinality 12, and angle set [ 0, 1/3 ]>
gap> DesignByAngleSet(5, 2, [0,1/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<2-design with rank 5, degree 2, cardinality 45, and angle set [ 0, 1/4 ]>
gap> DesignByAngleSet(9, 2, [0,1/9]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<2-design with rank 9, degree 2, cardinality 90, and angle set [ 0, 1/9 ]>
gap> DesignByAngleSet(28, 2, [0,1/16]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<2-design with rank 28, degree 2, cardinality 4060, and angle set [ 0, 1/16 ]>
gap> DesignByAngleSet(4, 4, [0,1/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<2-design with rank 4, degree 4, cardinality 36, and angle set [ 0, 1/4 ]>
gap> DesignByAngleSet(4, 4, [1/9,1/3]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignByAngleSet(16, 1, [0,1/9]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<2-design with rank 16, degree 1, cardinality 256, and angle set [ 0, 1/9 ]>
gap> DesignByAngleSet(4, 2, [0,1/4,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<3-design with rank 4, degree 2, cardinality 60, and angle set
[ 0, 1/4, 1/2 ]>
gap> DesignByAngleSet(16, 1, [0,1/16,1/4]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<3-design with rank 16, degree 1, cardinality 2160, and angle set
[ 0, 1/16, 1/4 ]>
gap> DesignByAngleSet(3, 4, [0,1/4,1/2]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<3-design with rank 3, degree 4, cardinality 63, and angle set
[ 0, 1/4, 1/2 ]>
gap> DesignByAngleSet(3, 4, [0,1/4,1/2,(3+Sqrt(5))/8, (3-Sqrt(5))/8]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<5-design with rank 3, degree 4, cardinality 315, and angle set
[ 0, 1/4, 1/2, -1/2*E(5)-1/4*E(5)^2-1/4*E(5)^3-1/2*E(5)^4,
  -1/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-1/4*E(5)^4 ]>
gap> DesignByAngleSet(12, 2, [0,1/3,1/4,1/12]);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<5-design with rank 12, degree 2, cardinality 32760, and angle set
[ 0, 1/12, 1/4, 1/3 ]>

# doc/ALCO.xml:1751-1765
gap> A := [ 0, 1/4, 1/2, 3/4, (5-Sqrt(5))/8, (5+Sqrt(5))/8,
> (3-Sqrt(5))/8, (3+Sqrt(5))/8 ];;
gap> D := DesignByAngleSet(2, 3, A);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<11-design with rank 2, degree 3, cardinality 120, and angle set
[ 0, 1/4, 1/2, 3/4, -3/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-3/4*E(5)^4,
  -1/2*E(5)-3/4*E(5)^2-3/4*E(5)^3-1/2*E(5)^4,
  -1/2*E(5)-1/4*E(5)^2-1/4*E(5)^3-1/2*E(5)^4,
  -1/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-1/4*E(5)^4 ]>
gap> A := [ 0, 1/4, (3-Sqrt(5))/8, (3+Sqrt(5))/8 ];;
gap> D := DesignByAngleSet(4, 1, A);;
gap> DesignAddCardinality(last, DesignSpecialBound(last));
<5-design with rank 4, degree 1, cardinality 60, and angle set
[ 0, 1/4, -1/2*E(5)-1/4*E(5)^2-1/4*E(5)^3-1/2*E(5)^4,
  -1/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-1/4*E(5)^4 ]>

#
gap> STOP_TEST("alco04.tst", 1);