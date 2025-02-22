# ALCO, chapter 6
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST("alco06.tst");

# doc/ALCO.xml:2274-2289
gap> Closure([1,E(7)], \*);
[ 1, E(7)^6, E(7)^5, E(7)^4, E(7)^3, E(7)^2, E(7) ]
gap> QuaternionD4Basis;
Basis( <algebra-with-one of dimension 4 over Rationals>,
[ (-1/2)*e+(-1/2)*i+(-1/2)*j+(1/2)*k, (-1/2)*e+(-1/2)*i+(1/2)*j+(-1/2)*k,
  (-1/2)*e+(1/2)*i+(-1/2)*j+(-1/2)*k, e ] )
gap> Closure(QuaternionD4Basis,\*);
[ (-1)*e, (-1/2)*e+(-1/2)*i+(-1/2)*j+(-1/2)*k,
  (-1/2)*e+(-1/2)*i+(-1/2)*j+(1/2)*k, (-1/2)*e+(-1/2)*i+(1/2)*j+(-1/2)*k,
  (-1/2)*e+(-1/2)*i+(1/2)*j+(1/2)*k, (-1/2)*e+(1/2)*i+(-1/2)*j+(-1/2)*k,
  (-1/2)*e+(1/2)*i+(-1/2)*j+(1/2)*k, (-1/2)*e+(1/2)*i+(1/2)*j+(-1/2)*k,
  (-1/2)*e+(1/2)*i+(1/2)*j+(1/2)*k, (-1)*i, (-1)*j, (-1)*k, k, j, i,
  (1/2)*e+(-1/2)*i+(-1/2)*j+(-1/2)*k, (1/2)*e+(-1/2)*i+(-1/2)*j+(1/2)*k,
  (1/2)*e+(-1/2)*i+(1/2)*j+(-1/2)*k, (1/2)*e+(-1/2)*i+(1/2)*j+(1/2)*k,
  (1/2)*e+(1/2)*i+(-1/2)*j+(-1/2)*k, (1/2)*e+(1/2)*i+(-1/2)*j+(1/2)*k,
  (1/2)*e+(1/2)*i+(1/2)*j+(-1/2)*k, (1/2)*e+(1/2)*i+(1/2)*j+(1/2)*k, e ]

# doc/ALCO.xml:2317-2323
gap> start := Basis(QuaternionAlgebra(Rationals)){[2,3]};
[ i, j ]
gap> repeat
> start := RandomElementClosure(start, \*);
> until Length(start) = 8;
gap> start;
[ (-1)*e, (-1)*i, (-1)*j, (-1)*k, k, j, i, e ]

# doc/ALCO.xml:2338-2346
gap> start := Basis(QuaternionAlgebra(Rationals)){[1,2]};
[ e, i ]
gap> gens := Basis(QuaternionAlgebra(Rationals)){[3]};
[ j ]
gap> repeat 
> start := RandomOrbitOnSets(gens, start, {x,y} -> x*y);
> until Length(start) = 8;
gap> start;
[ (-1)*e, (-1)*i, (-1)*j, (-1)*k, k, j, i, e ]

#
gap> STOP_TEST("alco06.tst", 1);
