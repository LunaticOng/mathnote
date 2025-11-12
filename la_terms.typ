#set page(
  paper: "us-letter",
  columns: 2,
  margin: 1cm,
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

+ injective(one-to-one) if $x!=y=>f(x)!=f(y)$

+ surjective(onto $T$) if $i m(f) = T$

+ $f$ is bijective $<=>$ $f$ is both injective and surjective

+ $s u p p(f) = {s in S|f(s) != 0}$

= Spanning Sets and Linear independence

$chevron.l S chevron.r=s p a n(s)={r_1 v_1+...+r_n v_n | r_i in F, v_i in S}$

Let $V$ be a vector space spanned by $s_i$

$a_1 s_1 + ... + a_n s_n = 0 => a_i = 0, forall i$

= Linear Transformation

== Kernel and Image

$tau :V->W$

Kernel = Null Space = $k e r(tau)={v in V|tau v = 0}$

dimension of $ker(tau)$ is called the _nullity_: $n u l l(tau)$

$tau$ is injective iff $ker(tau)={0}$

Image = Range = $im(f)={tau v | v in V}$

dimension of $im(tau)$ is called the _rank_ $r k(tau)$

$tau$ is surjective iff $im(tau) = W$


$r k(tau)+n u l l(tau)=dim(V)$

= Matrix Properties

+ Symmetric: $A=A^T$

+ Skew-Symmetric: $A^T=-A$

+ Hermitian: $A=A^*$

+ Skew-Hermitian: $A^*=-A$

+ Orthogonal: $A^T = A^(-1)$

+ Unitary: $A^* = A^(-1)$

+ Normal: $A A^* =A^* A$

+ Idempotent: $A^2=A$

+ Nilpotent: $A_k=O$, $k$ is the index of nilpotency