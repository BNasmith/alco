# Quaternion Tools

DeclareGlobalVariable("QuaternionD4basis");

# Icosian and Golden Field Tools

DeclareGlobalVariable("sigma");

DeclareGlobalVariable("tau");

DeclareGlobalFunction("GoldenRationalComponent");

DeclareGlobalFunction("GoldenIrrationalComponent");

DeclareGlobalFunction("GoldenModSigma");

DeclareGlobalVariable("IcosianH4basis");


# Octonion Algebra and Arithmetic Tools

DeclareCategory( "IsOctonion", IsScalar );

DeclareCategory( "IsOctonionArithmeticElement", IsOctonion);

DeclareCategoryCollections( "IsOctonion" );

DeclareCategoryCollections( "IsOctonionCollection" );

DeclareAttribute("Norm", IsOctonionCollection);

DeclareCategory("IsOctonionAlgebra", IsAlgebra);

    DeclareAttribute("GramMatrix", IsOctonionAlgebra);

DeclareGlobalFunction("OctonionArithmetic");

DeclareGlobalFunction("OctonionAlgebra");

DeclareGlobalVariable("Oct");

DeclareGlobalVariable("OctonionE8basis");

DeclareGlobalFunction("OctonionToRealVector");

DeclareGlobalFunction("RealToOctonionVector");

# Jordan Algebra Tools

DeclareCategory("IsJordanAlgebra", IsAlgebra);

    DeclareAttribute("JordanRank", IsJordanAlgebra);

    DeclareAttribute("JordanDegree", IsJordanAlgebra);

    DeclareAttribute("JordanMatrixBasis", IsJordanAlgebra);

    DeclareAttribute("JordanOffDiagonalBasis", IsJordanAlgebra);

    DeclareAttribute("JordanHomotopeVector", IsJordanAlgebra);

    DeclareAttribute("JordanBasisTraces", IsJordanAlgebra);

DeclareCategory("IsJordanAlgebraObj", IsSCAlgebraObj);

    DeclareGlobalFunction("GenericMinimalPolynomial");

    DeclareAttribute("JordanAdjugate", IsJordanAlgebraObj);

    DeclareAttribute("IsPositiveDefinite", IsJordanAlgebraObj);

DeclareGlobalFunction("HermitianJordanAlgebraBasis");

DeclareGlobalFunction("HermitianMatrixToJordanCoefficients");

DeclareGlobalFunction("HermitianMatrixToJordanVector");

DeclareGlobalFunction("JordanSpinFactor");

DeclareGlobalFunction("HermitianSimpleJordanAlgebra");

DeclareAttribute("JordanAlgebraGramMatrix", IsJordanAlgebra);

DeclareGlobalFunction("JordanHomotope");

DeclareGlobalFunction("SimpleEuclideanJordanAlgebra");

# Albert Algebra Tools

DeclareGlobalFunction("AlbertAlgebra");

DeclareGlobalVariable("Alb");

# T-Design Tools

DeclareGlobalFunction("JacobiPolynomial");

DeclareGlobalFunction("Q_k_epsilon");

DeclareGlobalFunction("R_k_epsilon");

# Designs

DeclareCategory( "IsDesign", IsObject );

DeclareCategory( "IsSphericalDesign", IsDesign );

DeclareCategory( "IsProjectiveDesign", IsDesign );

DeclareGlobalFunction("DesignByJordanParameters");

DeclareAttribute( "DesignJordanRank", IsDesign );

DeclareAttribute( "DesignJordanDegree", IsDesign );

DeclareAttribute( "DesignQPolynomial", IsDesign);

DeclareAttribute( "DesignConnectionCoefficients", IsDesign );

DeclareCategory( "IsDesignWithAngleSet", IsDesign );

DeclareAttribute( "DesignAngleSet", IsDesignWithAngleSet );

DeclareOperation("DesignAddAngleSet", [ IsDesign, IsList ]);

DeclareGlobalFunction("DesignByAngleSet");

DeclareAttribute( "DesignNormalizedAnnihilatorPolynomial", IsDesignWithAngleSet );

DeclareAttribute( "DesignNormalizedIndicatorCoefficients", IsDesignWithAngleSet );

DeclareCategory( "IsDesignWithPositiveIndicatorCoefficients", IsDesignWithAngleSet );

DeclareAttribute( "DesignSpecialBound", IsDesignWithAngleSet ); 

DeclareCategory( "IsDesignWithCardinality", IsDesign );

DeclareCategory( "IsRegularSchemeDesign", IsDesignWithCardinality );

DeclareCategory( "IsSpecialBoundDesign", IsRegularSchemeDesign );

DeclareCategory( "IsAssociationSchemeDesign", IsSpecialBoundDesign );

DeclareCategory( "IsTightDesign", IsAssociationSchemeDesign );

DeclareAttribute( "DesignCardinality", IsDesignWithAngleSet );

DeclareOperation("DesignAddCardinality", [ IsDesignWithAngleSet, IsInt ]);

DeclareCategory( "IsDesignWithStrength", IsDesign );


DeclareAttribute("DesignAnnihilatorPolynomial", IsDesignWithAngleSet and IsDesignWithCardinality);

DeclareAttribute("DesignIndicatorCoefficients", IsDesignWithAngleSet and IsDesignWithCardinality);

DeclareAttribute("DesignStrength", IsDesignWithAngleSet and IsDesignWithCardinality);

DeclareAttribute("DesignSubdegrees", IsRegularSchemeDesign);

DeclareAttribute("DesignIntersectionNumbers", IsAssociationSchemeDesign);

DeclareAttribute("DesignReducedAdjacencyMatrices", IsAssociationSchemeDesign);

DeclareAttribute("DesignBoseMesnerAlgebra", IsAssociationSchemeDesign);

DeclareAttribute("DesignBoseMesnerIdempotentBasis", IsAssociationSchemeDesign);

DeclareAttribute("DesignFirstEigenmatrix", IsAssociationSchemeDesign);

DeclareAttribute("DesignSecondEigenmatrix", IsAssociationSchemeDesign);

DeclareAttribute("DesignMultiplicities", IsAssociationSchemeDesign);

DeclareAttribute("DesignValencies", IsAssociationSchemeDesign);

DeclareAttribute("DesignKreinNumbers", IsAssociationSchemeDesign);

# Leech Lattice Tools

DeclareGlobalFunction("IsLeechLatticeGramMatrix");

DeclareGlobalFunction("IsGossetLatticeGramMatrix");

DeclareCategory("IsOctonionLattice", IsFreeLeftModule);

    DeclareAttribute("UnderlyingOctonionRing", IsOctonionLattice);
    
    DeclareAttribute("OctonionGramMatrix", IsOctonionLattice);

    DeclareAttribute("GeneratorsAsCoefficients", IsOctonionLattice);

    DeclareAttribute("LLLReducedBasisCoefficients", IsOctonionLattice);

    DeclareAttribute("GramMatrix", IsOctonionLattice);

    DeclareAttribute("TotallyIsotropicCode", IsOctonionLattice);

DeclareGlobalFunction("OctonionLatticeByGenerators");

DeclareCategory("IsOctonionLatticeBasis", IsCanonicalBasis);

    DeclareAttribute("UnderlyingOctonionRing", IsOctonionLatticeBasis);

DeclareOperation( "IsSublattice", [ IsOctonionLattice, IsOctonionLattice ] );