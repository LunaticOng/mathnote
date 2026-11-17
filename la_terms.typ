#set page(
  paper: "a4",
  columns: 2,
  margin: .7cm,
)

#set text(10pt, font: "Formera")

#let title = [Linear Algebra terms]

#place(
  top + center,
  float: true,
  scope: "parent",
  text(17pt)[*#title*],
)

= Functions

$f:S->T$
+ domain of $f$ is the set $S$, range of f is $T$
+ image of $f$ is the set $i m(f)={f(s)|s in S}$
+ injective (one-to-one) if $f(x) = f(y) => x = y$
+ surjective (onto $T$) if $i m(f) = T$
+ $f$ is bijective $<=>$ $f$ is both injective and surjective
+ $s u p p(f) = {s in S|f(s) != 0}$
// + $a n n(v) eq {r in R | r v = 0}, v in M "and" M "is R-module"$

= Spanning Sets and Linear independence

$chevron.l S chevron.r=s p a n(s)={sum_(i=1)^(n) r_i v_i | r_i in F, v_i in S}$

Let $V$ be a vector space spanned by $s_i$

$sum_(i=1)^n a_i v_i = 0, forall i$, then $V$ is linear independent

= Linear Transformation

== Kernel and Image

$tau :V->W$

Kernel = Null Space = $k e r(tau)={v in V|tau v = 0}$
$dim(ker(tau))$ is called the _nullity_: $n u l l i t y(tau)$
$tau$ is injective iff $ker(tau)={0}$

Image = Range = $im(f)={tau v | v in V}$
$dim(im(tau))$ is called the _rank_ $r k(tau)$
$tau$ is surjective iff $im(tau) = W$

Rank Nullity theorem: $r k(tau)+n u l l i t y(tau)=dim(V)$

= Matrix Properties

+ Symmetric: $A=A^T$, Skew-Symmetric: $A^T=-A$
+ Hermitian: $A=A^*$, Skew-Hermitian: $A^*=-A$
+ Orthogonal: $A^T = A^(-1)$, Unitary: $A^* = A^(-1)$
+ Normal: $A A^* =A^* A$, Idempotent: $A^2=A$
  \ A normal matrix is never defective
+ Nilpotent: $A^k=O$, $k$ is the index of nilpotency
+ $A U = U J$, then  $A$ is similar to $J$

= Eigenvalue and Eigenvectors

+ Characteristic polynomial: $p(lambda)=det(lambda I_n-A)$
+ Cayley-Hamilton theorem: $p(A) eq 0$
+ Eigenspace: $E=ker(A-lambda I)$
+ geometric multiplicity: $dim(E) eq "nullity"(A-lambda I)$
+ algebraic multiplicity is the multiplicity of $lambda$ as a root of the characteristic polynomial
+ spectrum: $sigma (A)={lambda in CC| ker(A-lambda_j I_n) eq.not {0}}$ (all eigvals)

= Invertibility

- $det(A) eq.not 0$ (non singular)
- $r k(A)=n$ and $ker(A)={0}$
- all cols and rows are linear independent
- $A$ is row equivalent to $I$
- $0 in.not sigma(A)$
- bijective

= Diagnoalizability

not diagonalizable $eq.triple$ defective
- Eigenvectors spans $CC^n$
- for all eigenvalues, AM = GM
- minimal polynomial with no exponents more than 1

= Moore-Penrose Pseudoinverse

Unique matrix $A^+$ satisfying:
+ $A A^+ A = A$
+ $A^+ A A^+ = A^+$
+ $(A A^+)^* = A A^+$
+ $(A^+ A)^* = A^+ A$

Least squares solution to $A x = b$ is $x = A^+ b$

= Axioms of Vector Spaces

+ $forall u, v in V arrow.r (u + v) in V$
+ $forall c in F, forall u in V arrow.r c u in V$
+ $forall u, v in V arrow.r u + v = v + u$
+ $forall c in F, forall u, v in V arrow.r c(u + v) = c u + c v$
+ $forall u, v, w in V arrow.r (u + v) + w = u + (v + w)$
+ $forall c, d in F, forall u in V arrow.r (c + d)u = c u + d u$
+ $exists bold(0) in V : forall u in V arrow.r u + bold(0) = u$
+ $forall c, d in F, forall u in V arrow.r c(d u) = (c d)u$
+ $forall u in V, exists (-u) in V : u + (-u) = bold(0)$
+ $exists 1 in F : forall u in V arrow.r 1 u = u$

= Inner Product Spaces

Definition

+ $chevron.l x+y, z chevron.r=chevron.l x, z chevron.r + chevron.l y, z chevron.r$
+ $chevron.l c x, y chevron.r=c chevron.l x, y chevron.r$, c is a scalar
+ $overline(chevron.l x \, y chevron.r)=chevron.l y, x chevron.r$
+ $chevron.l x, x chevron.r > 0 "when" x != 0$

= Sepcial matrices

== Toeplitz matrix

== Hankel matrix

== Vandermonde matrix

= Quadratic Form

$Q(x) = x^T A x = sum_(i,j) A_(i j) x_i x_j$

where $A$ is a symmetric matrix ($A^T=A$).

== Definite Matrix

Let $A$ be a symmetric matrix.
- Positive Definite: $x^T A x > 0, forall x != 0$ (all eigenvalues $> 0$)
- Positive Semidefinite: $x^T A x >= 0, forall x$ (all eigenvalues $>= 0$)
- Negative Definite: $x^T A x < 0, forall x != 0$
- Negative Semidefinite: $x^T A x <= 0, forall x$
- Indefinite: $x^T A x$ takes both positive and negative values

== Householder Transformation

/*
$P = I - 2 v v^T$

where $v$ is a unit vector ($||v||=1$).

Properties:
- Symmetric: $P^T = P$
- Orthogonal: $P^T = P^(-1)$
- Involutory: $P^2 = I$
- $det(P) = -1$ */

== Rayleigh Quotient

= Sylvester's formula

If A is a diagonalizable matrix

$f(A) = sum_(i=1)^(k) f(lambda_i) A_i$

Where $A_i$ are the corresponding Frobenius covariants

$A_i equiv product_(j = 1 \ j != i)^k (A-lambda_j I)/(lambda_i - lambda_j)$

// Its generalized case is in #link("https://en.wikipedia.org/wiki/Sylvester%27s_formula")[Wikipedia: Sylvester's Formula]

= Cramer's rule

= Gershgorin's Disk Theorem

= Hadamard's Theorem