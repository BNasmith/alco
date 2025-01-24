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

# doc/ALCO.xml:1056-1064
gap> a := Indeterminate(Rationals, "a");; 
gap> b := Indeterminate(Rationals, "b");; 
gap> x := Indeterminate(Rationals, "x");;
gap> JacobiPolynomial(0,a,b);
[ 1 ]
gap> JacobiPolynomial(1,a,b);
[ 1/2*a-1/2*b, 1/2*a+1/2*b+1 ]
gap> ValuePol(last,x);
1/2*a*x+1/2*b*x+1/2*a-1/2*b+x

# doc/ALCO.xml:1099-1110
gap> D := JordanDesignByParameters(3,8);
<design with rank 3 and degree 8>
gap> IsJordanDesign(D);
true
gap> IsSphericalJordanDesign(D);
false
gap> IsProjectiveJordanDesign(D);
true
gap> JordanDesignByParameters(4,8);
fail
gap> JordanDesignByParameters(3,9);
fail

# doc/ALCO.xml:1119-1122
gap> D := JordanDesignByParameters(3,8);
<design with rank 3 and degree 8>
gap> [JordanDesignRank(D), JordanDesignDegree(D)];
[ 3, 8 ]

# doc/ALCO.xml:1131-1140
gap> D := JordanDesignByParameters(3,8);
<design with rank 3 and degree 8>
gap> r := JordanDesignRank(D);; d := JordanDesignDegree(D);;
gap> x := Indeterminate(Rationals, "x");;
gap> JordanDesignQPolynomials(D);
function( k ) ... end
gap> JordanDesignQPolynomials(D)(2);
[ 90, -585, 819 ]
gap> CoefficientsOfUnivariatePolynomial(Q_k_epsilon(2,0,r,d,x));
[ 90, -585, 819 ]

# doc/ALCO.xml:1151-1165
gap> D := JordanDesignByParameters(3,8);
<design with rank 3 and degree 8>
gap> JordanDesignConnectionCoefficients(D);
function( s ) ... end
gap> f := JordanDesignConnectionCoefficients(D)(3);; Display(f);
[ [        1,        0,        0,        0 ],
  [      1/3,     1/39,        0,        0 ],
  [     5/39,    5/273,    1/819,        0 ],
  [     5/91,     1/91,    1/728,  1/12376 ] ]
gap> for j in [1..4] do Display(Sum(List([1..4], i -> 
> f[j][i]*JordanDesignQPolynomials(D)(i-1)))); od;
[ 1, 0, 0, 0 ]
[ 0, 1, 0, 0 ]
[ 0, 0, 1, 0 ]
[ 0, 0, 0, 1 ]

# doc/ALCO.xml:1196-1205
gap> D := JordanDesignByParameters(4,4);
<design with rank 4 and degree 4>
gap> JordanDesignAddAngleSet(D, [2]);
fail
gap> D;
<design with rank 4 and degree 4>
gap> JordanDesignAddAngleSet(D, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignAngleSet(D);
[ 1/9, 1/3 ]

# doc/ALCO.xml:1213-1216
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignAngleSet(D);
[ 1/9, 1/3 ]

# doc/ALCO.xml:1226-1235
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> p := JordanDesignNormalizedAnnihilatorPolynomial(D);
[ 1/16, -3/4, 27/16 ]
gap> ValuePol(p, 1/9);
0
gap> ValuePol(p, 1/3);
0
gap> ValuePol(p, 1);
1

# doc/ALCO.xml:1245-1252
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> f := JordanDesignNormalizedIndicatorCoefficients(D);
[ 1/64, 7/960, 9/3520 ]
gap> Sum(List([1..3], i -> f[i]*JordanDesignQPolynomials(D)(i-1)));
[ 1/16, -3/4, 27/16 ]
gap> JordanDesignNormalizedAnnihilatorPolynomial(D);
[ 1/16, -3/4, 27/16 ]

# doc/ALCO.xml:1270-1275
gap> D := JordanDesignByAngleSet(4, 4, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> IsJordanDesignWithPositiveIndicatorCoefficients(D);
true
gap> JordanDesignSpecialBound(D);
64

# doc/ALCO.xml:1297-1304
gap> D := JordanDesignByAngleSet(4,4, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> HasJordanDesignCardinality(D);
false
gap> JordanDesignAddCardinality(D, 64);
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignCardinality(D);
64

# doc/ALCO.xml:1325-1331
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);; 
gap> JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignAnnihilatorPolynomial(D);
[ 4, -48, 108 ]
gap> ValuePol(last, 1);
64

# doc/ALCO.xml:1341-1344
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignIndicatorCoefficients(D);
[ 1, 7/15, 9/55 ]

# doc/ALCO.xml:1366-1373
gap> D := JordanDesignByAngleSet(4,4, [1/3,1/9]);
<design with rank 4, degree 4, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignAddCardinality(D, 64);
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> IsJordanDesignWithStrength(D);
true
gap> JordanDesignStrength(D);
2

# doc/ALCO.xml:1419-1422
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignSubdegrees(D);
[ 27, 36 ]

# doc/ALCO.xml:1441-1449
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> B := JordanDesignBoseMesnerAlgebra(D);
<algebra of dimension 3 over Rationals>
gap> BasisVectors(CanonicalBasis(B));
[ A1, A2, A3 ]
gap> One(B); IsSCAlgebraObj(last);
A3
true

# doc/ALCO.xml:1458-1466
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> for x in BasisVectors(JordanDesignBoseMesnerIdempotentBasis(D)) do Display(x); 
> od;
(-5/64)*A1+(3/64)*A2+(27/64)*A3
(1/16)*A1+(-1/16)*A2+(9/16)*A3
(1/64)*A1+(1/64)*A2+(1/64)*A3
gap> ForAll(JordanDesignBoseMesnerIdempotentBasis(D), IsIdempotent);
true

# doc/ALCO.xml:1478-1483
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> A := BasisVectors(Basis(JordanDesignBoseMesnerAlgebra(D)));;
gap> p := JordanDesignIntersectionNumbers(D);;
gap> A[1]*A[2] = Sum(List([1..3]), k -> p[k][1][2]*A[k]);
true

# doc/ALCO.xml:1497-1504
gap> D := JordanDesignByAngleSet(4, 4, [1/3, 1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> q := JordanDesignKreinNumbers(D);; 
gap> Display(q);
[ [ [ 10, 16, 1 ], [ 16, 20, 0 ], [ 1, 0, 0 ] ], 
  [ [ 12, 15, 0 ], [ 15, 20, 1 ], [ 0, 1, 0 ] ], 
  [ [ 27, 0, 0 ], [ 0, 36, 0 ], [ 0, 0, 1 ] ] ]
  

# doc/ALCO.xml:1517-1523
gap> D := JordanDesignByAngleSet(4,4,[1/3,1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> a := Basis(JordanDesignBoseMesnerAlgebra(D));;
gap> e := JordanDesignBoseMesnerIdempotentBasis(D);;
gap> ForAll([1..3], i -> a[i] = Sum([1..3], j ->
> JordanDesignFirstEigenmatrix(D)[i][j]*e[j]));
true

# doc/ALCO.xml:1536-1545
gap> D := JordanDesignByAngleSet(4,4,[1/3,1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> a := Basis(JordanDesignBoseMesnerAlgebra(D));;
gap> e := JordanDesignBoseMesnerIdempotentBasis(D);;
gap> ForAll([1..3], i -> e[i]*JordanDesignCardinality(D) =
> Sum([1..3], j -> JordanDesignSecondEigenmatrix(D)[i][j]*a[j]));
true
gap> JordanDesignFirstEigenmatrix(D) = Inverse(JordanDesignSecondEigenmatrix(D))
> *JordanDesignCardinality(D);
true

# doc/ALCO.xml:1556-1559
gap> D := JordanDesignByAngleSet(4,4,[1/3,1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignMultiplicities(D);
[ 27, 36, 1 ]

# doc/ALCO.xml:1570-1573
gap> D := JordanDesignByAngleSet(4,4,[1/3,1/9]);; JordanDesignAddCardinality(D, 64);; D;
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> DesignValencies(D);
[ 27, 36, 1 ]

# doc/ALCO.xml:1593-1634
gap> JordanDesignByAngleSet(2, 1, [0,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 3-design with rank 2, degree 1, cardinality 4, and angle set 
[ 0, 1/2 ]> 
gap> JordanDesignByAngleSet(2, 2, [0,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 3-design with rank 2, degree 2, cardinality 6, and angle set
[ 0, 1/2 ]>
gap> JordanDesignByAngleSet(2, 4, [0,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 3-design with rank 2, degree 4, cardinality 10, and angle set
[ 0, 1/2 ]>
gap> JordanDesignByAngleSet(2, 8, [0,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 3-design with rank 2, degree 8, cardinality 18, and angle set
[ 0, 1/2 ]>
gap> JordanDesignByAngleSet(3, 2, [1/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 2-design with rank 3, degree 2, cardinality 9, and angle set [ 1/4 ]>
gap> JordanDesignByAngleSet(4, 2, [0,1/3]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 3-design with rank 4, degree 2, cardinality 40, and angle set
[ 0, 1/3 ]>
gap> JordanDesignByAngleSet(6, 2, [0,1/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 3-design with rank 6, degree 2, cardinality 126, and angle set
[ 0, 1/4 ]>
gap> JordanDesignByAngleSet(8, 2, [1/9]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 2-design with rank 8, degree 2, cardinality 64, and angle set [ 1/9 ]>
gap> JordanDesignByAngleSet(5, 4, [0,1/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 3-design with rank 5, degree 4, cardinality 165, and angle set
[ 0, 1/4 ]>
gap> JordanDesignByAngleSet(3, 8, [0,1/4,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 5-design with rank 3, degree 8, cardinality 819, and angle set
[ 0, 1/4, 1/2 ]>
gap> JordanDesignByAngleSet(24, 1, [0,1/16,1/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 5-design with rank 24, degree 1, cardinality 98280, and angle set
[ 0, 1/16, 1/4 ]>

# doc/ALCO.xml:1638-1642
gap> JordanDesignByAngleSet(2, 2, [ 0, (5-Sqrt(5))/10, (5+Sqrt(5))/10 ]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 5-design with rank 2, degree 2, cardinality 12, and angle set
[ 0, -3/5*E(5)-2/5*E(5)^2-2/5*E(5)^3-3/5*E(5)^4,
  -2/5*E(5)-3/5*E(5)^2-3/5*E(5)^3-2/5*E(5)^4 ]>

# doc/ALCO.xml:1648-1675
gap> JordanDesignByAngleSet(2, 23, [ 0, 1/4, 3/8, 1/2, 5/8, 3/4 ]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 11-design with rank 2, degree 23, cardinality 196560, and angle set
[ 0, 1/4, 3/8, 1/2, 5/8, 3/4 ]>
gap> JordanDesignByAngleSet(2, 5, [ 1/4, 5/8 ]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 4-design with rank 2, degree 5, cardinality 27, and angle set
[ 1/4, 5/8 ]>
gap> JordanDesignByAngleSet(2, 6, [0,1/3,2/3]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 5-design with rank 2, degree 6, cardinality 56, and angle set
[ 0, 1/3, 2/3 ]>
gap> JordanDesignByAngleSet(2, 21, [3/8, 7/12]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 4-design with rank 2, degree 21, cardinality 275, and angle set
[ 3/8, 7/12 ]>
gap> JordanDesignByAngleSet(2, 22, [0,2/5,3/5]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 5-design with rank 2, degree 22, cardinality 552, and angle set
[ 0, 2/5, 3/5 ]>
gap> JordanDesignByAngleSet(2, 7, [0,1/4,1/2,3/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 7-design with rank 2, degree 7, cardinality 240, and angle set
[ 0, 1/4, 1/2, 3/4 ]>
gap> JordanDesignByAngleSet(2, 22, [0,1/3,1/2,2/3]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<Tight 7-design with rank 2, degree 22, cardinality 4600, and angle set
[ 0, 1/3, 1/2, 2/3 ]>

# doc/ALCO.xml:1680-1725
gap> JordanDesignByAngleSet(4, 4, [0,1/4,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<3-design with rank 4, degree 4, cardinality 180, and angle set
[ 0, 1/4, 1/2 ]>
gap> JordanDesignByAngleSet(3, 2, [0,1/3]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<2-design with rank 3, degree 2, cardinality 12, and angle set [ 0, 1/3 ]>
gap> JordanDesignByAngleSet(5, 2, [0,1/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<2-design with rank 5, degree 2, cardinality 45, and angle set [ 0, 1/4 ]>
gap> JordanDesignByAngleSet(9, 2, [0,1/9]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<2-design with rank 9, degree 2, cardinality 90, and angle set [ 0, 1/9 ]>
gap> JordanDesignByAngleSet(28, 2, [0,1/16]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<2-design with rank 28, degree 2, cardinality 4060, and angle set [ 0, 1/16 ]>
gap> JordanDesignByAngleSet(4, 4, [0,1/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<2-design with rank 4, degree 4, cardinality 36, and angle set [ 0, 1/4 ]>
gap> JordanDesignByAngleSet(4, 4, [1/9,1/3]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<2-design with rank 4, degree 4, cardinality 64, and angle set [ 1/9, 1/3 ]>
gap> JordanDesignByAngleSet(16, 1, [0,1/9]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<2-design with rank 16, degree 1, cardinality 256, and angle set [ 0, 1/9 ]>
gap> JordanDesignByAngleSet(4, 2, [0,1/4,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<3-design with rank 4, degree 2, cardinality 60, and angle set
[ 0, 1/4, 1/2 ]>
gap> JordanDesignByAngleSet(16, 1, [0,1/16,1/4]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<3-design with rank 16, degree 1, cardinality 2160, and angle set
[ 0, 1/16, 1/4 ]>
gap> JordanDesignByAngleSet(3, 4, [0,1/4,1/2]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<3-design with rank 3, degree 4, cardinality 63, and angle set
[ 0, 1/4, 1/2 ]>
gap> JordanDesignByAngleSet(3, 4, [0,1/4,1/2,(3+Sqrt(5))/8, (3-Sqrt(5))/8]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<5-design with rank 3, degree 4, cardinality 315, and angle set
[ 0, 1/4, 1/2, -1/2*E(5)-1/4*E(5)^2-1/4*E(5)^3-1/2*E(5)^4,
  -1/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-1/4*E(5)^4 ]>
gap> JordanDesignByAngleSet(12, 2, [0,1/3,1/4,1/12]);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<5-design with rank 12, degree 2, cardinality 32760, and angle set
[ 0, 1/12, 1/4, 1/3 ]>

# doc/ALCO.xml:1729-1743
gap> A := [ 0, 1/4, 1/2, 3/4, (5-Sqrt(5))/8, (5+Sqrt(5))/8,
> (3-Sqrt(5))/8, (3+Sqrt(5))/8 ];;
gap> D := JordanDesignByAngleSet(2, 3, A);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<11-design with rank 2, degree 3, cardinality 120, and angle set
[ 0, 1/4, 1/2, 3/4, -3/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-3/4*E(5)^4,
  -1/2*E(5)-3/4*E(5)^2-3/4*E(5)^3-1/2*E(5)^4,
  -1/2*E(5)-1/4*E(5)^2-1/4*E(5)^3-1/2*E(5)^4,
  -1/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-1/4*E(5)^4 ]>
gap> A := [ 0, 1/4, (3-Sqrt(5))/8, (3+Sqrt(5))/8 ];;
gap> D := JordanDesignByAngleSet(4, 1, A);;
gap> JordanDesignAddCardinality(last, JordanDesignSpecialBound(last));
<5-design with rank 4, degree 1, cardinality 60, and angle set
[ 0, 1/4, -1/2*E(5)-1/4*E(5)^2-1/4*E(5)^3-1/2*E(5)^4,
  -1/4*E(5)-1/2*E(5)^2-1/2*E(5)^3-1/4*E(5)^4 ]>

#
gap> STOP_TEST("alco04.tst", 1);
