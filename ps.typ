#set page(
  paper: "a4",
  columns: 2,
  margin: .7cm,
)

#set text(10pt, font: "Formera")

#let title = [Properties and Proof of Laws in Probability and Statistics]

#place(
  top + center,
  float: true,
  scope: "parent",
  text(17pt)[*#title*],
)

= Probability Generating Function

When X is a #text(red)[nonnegative int-valued discrete] r.v.

$G_X (z) = E[z^X] = sum_(x=0)^(oo) p_X (x) z^x$

== Properties:

$G_X^((n)) (z)=sum_(x=n)^oo vec(x, n) n! p_X (x) z^(x-n)$

+ $p_X (0) = P(X=0) = G_X (0)$
+ $p_X (n) = P(X=n) = 1/(n!) G_X^((n)) (0)$
+ $E[X^(underline(n))] = G_X^((n)) (1)$
+ If $Y=X_1+...+X_n$, $G_Y (z) = product_(i=1)^n G_(X_i) (z)$
+ $V a r(X)=G_X^' (1)+G_X^('') (1) - [G_X^' (1)]^2$

= Moment Generating Function

$M_X (t) = E[e^(t X)] &= cases(sum_i e^(t x_i) p_X (x_i) ", (discrete)", integral_oo^oo e^(t x) f_X (x) d x ", (continuous)")\
&= E[1+t X + ...+ 1/(k!) (t X)^k]\
&= 1 + t E[X] + ... + t^k/(k!) E[X_k]$

== Properties:

+ $k$th moment of X: $E[X^k] = M_X^((k)) (0), k in NN$
+ If two r.v.'s have the same MGF, then they must have the same distribution

= Characteristic Function

$phi_X (t) = E[e^(i t X)] = E[cos(t X) + i sin(t X)]$

== Properties:
+ $phi_X (0) = 1$, $|phi_X (t)| <= 1$
+ $phi_X^((k)) (0) = i^k E[X^k]$
+ If $X$ and $Y$ are independent, $phi_(X+Y) (t) = phi_X (t) phi_Y (t)$
+ Uniqueness: If $phi_X (t) = phi_Y (t)$ for all $t$, then $X$ and $Y$ have the same distribution.

= Cauchy-Schwartz Inequality

$(E[X Y])^2 lt.eq E[X^2] E[Y^2]$

== Proof:

$E[(X-alpha Y)^2] gt.eq 0$

$E[X^2] - 2alpha E[X Y] + alpha^2 E[Y^2] gt.eq 0$

choose $alpha$ to minimize the LHS of the equation

$alpha eq (E[X Y])/(E[Y^2])$ then $E[X^2] minus ((E[X Y])^2)/(E[Y^2]) gt.eq 0 qed$

= Central Limit Theorem

== Proof:

Let $X_1, ..., X_n$ be i.i.d. with $E[X_i]=mu$ and $V a r(X_i)=sigma^2$.

Standardize: $Y_i = (X_i - mu)/sigma$, so $E[Y_i]=0, V a r(Y_i)=1$.

Let $Z_n = (sum_(i=1)^n Y_i) / sqrt(n)$.

Using MGFs (assuming MGF exists):

$M_(Z_n) (t) = E[e^(t Z_n)] = E[e^((t/sqrt(n)) sum Y_i)] = product_(i=1)^n E[e^((t/sqrt(n)) Y_i)] = [M_Y (t/sqrt(n))]^n$

Using Taylor expansion for $M_Y (s)$ around 0: $M_Y (s) approx 1 + s E[Y] + s^2/2 E[Y^2] = 1 + s^2/2$.

Substitute $s = t/sqrt(n)$:

$M_(Z_n) (t) approx [1 + (t/sqrt(n))^2 / 2]^n = [1 + t^2/(2n)]^n$

Taking limit $n->oo$:

$lim_(n->oo) M_(Z_n) (t) = e^(t^2/2)$

This is the MGF of standard normal $N(0,1)$. $qed$

= Weak Law of Large Numbers

$lim_(n->oo) P(abs(overline(X_n)-mu) gt epsilon) eq 0 ,"for any" epsilon \ "where" overline(X_n) eq 1/n (X_1+...+X_n), E[X_i] = mu, V a r[X_i] = sigma^2$

== Proof:
Using Chebyshev's Inequality on the random variable $overline(X)_n$:

First, find mean and variance of $overline(X)_n$:

$E[overline(X)_n] = E[1/n sum X_i] = 1/n (n mu) = mu$

$V a r(overline(X)_n) = V a r(1/n sum X_i) = 1/n^2 (n sigma^2) = sigma^2/n$

Apply Chebyshev's with $a = epsilon$:

$P(|overline(X)_n - mu| >= epsilon) <= (V a r(overline(X)_n)) / epsilon^2 = (sigma^2/n) / epsilon^2 = sigma^2 / (n epsilon^2)$

Taking the limit as $n -> oo$:

$lim_(n->oo) P(|overline(X)_n - mu| >= epsilon) <= lim_(n->oo) sigma^2 / (n epsilon^2) = 0 qed$

= Strong Law of Large Numbers

$P(lim_(n->oo) overline(X)_n = mu) = 1$

== Proof (Hard):
(Proof assuming $E[X^4] < oo$)

We bound $P(|overline(X)_n - mu| > epsilon)$ using Markov inequality on the 4th moment.

$E[(overline(X)_n - mu)^4] = E[(1/n sum (X_i - mu))^4] = 1/n^4 E[(sum Y_i)^4]$ where $Y_i = X_i - mu$.

Expanding $(sum Y_i)^4$, terms like $E[Y_i Y_j^3]$ vanish because $E[Y_i]=0$ and independence.

Only $E[Y_i^4]$ and $E[Y_i^2 Y_j^2]$ terms remain.
$E[(sum Y_i)^4] = n E[Y^4] + 3n(n-1) (E[Y^2])^2$

So $E[(overline(X)_n - mu)^4] approx C/n^2$.

By Markov: $P(|overline(X)_n - mu| > epsilon) <= E[(overline(X)_n - mu)^4]/epsilon^4 approx C/(n^2 epsilon^4)$.

Since $sum 1/n^2 < oo$, by Borel-Cantelli lemma, the probability of infinitely many deviations is 0. $qed$

= Markov Inequality

If $f_X (x)=0 "for" x < 0$ and for any $a > 0$, $P(X >= a)<=mu_X/a$

== Proof:

$P(X>=a)=integral_a^oo f_X (x) d x$

$mu_X = E[X] \ = integral_0^oo x f_X (x) d x >= integral_a^oo x f_X (x) d x >= a integral_a^oo f_X (x) d x$

Hence, $integral_0^oo f_X (x) d x=P(X>=a) <= mu_X/a qed$

= Chebyshev Inequality

For any $a > 0$, $P(|X-mu_X|>=a)<=sigma_X^2/a^2$

== Proof:

$P(abs(X-mu_X))=integral_(-oo)^(mu_X-a) f_X (x) d x + integral_(mu_X+a)^oo f_X (x) d x \ = integral_(abs(x-mu_X) gt.eq a) f_X (x) d x$

$sigma_X^2=integral_(-oo)^oo (x-mu_X)^2 f_X (x) d x gt.eq a^2 integral_(abs(x-mu_X) gt.eq a) f_X (x) d x$

$integral_(abs(x-mu_X) gt.eq a) f_X (x) d x lt.eq (sigma_X^2)/a^2 => P(abs(X-mu_X) gt.eq a) lt.eq (sigma_X^2)/a^2 qed$

= Jensen's Inequality

$g(x)$ is a convex function

$E[g(x)] gt.eq g(E[X])$

== Proof:

Expanding $g(x)$ in a Taylor series expansion around $mu eq E(x)$

$g(x) eq g(mu) plus g^' (mu) (x-mu) plus 1/2 g^('') (xi) (x-xi)^2$

where $xi$ is between $x$ and $mu$, if $g(x)$ is convex, $g^('')(xi) gt.eq 0$

$g(x) gt.eq g(mu) + g^' (mu) (x-mu)$

Hence, $g(X) gt.eq g(mu) + g^' (mu) (X-mu)$

Taking expectation: 

$E[g(x)] gt.eq g(mu) + g^' (mu) E[X-mu] = g(mu) = g(E[X]) qed$

= Chernoff's Bound

$P(X >= a) <= min_(t>0) e^(-t a) M_X (t)$

== Proof:
For any $t > 0$, the function $e^(t x)$ is strictly increasing.

$P(X >= a) = P(e^(t X) >= e^(t a))$

Applying Markov's Inequality to the non-negative r.v. $Y = e^(t X)$:

$P(e^(t X) >= e^(t a)) <= E[e^(t X)] / e^(t a)$

$P(X >= a) <= e^(-t a) M_X (t)$

Since this holds for all $t>0$, we can minimize the RHS to find the tightest bound. $qed$

= Binomial to Poisson

== Proof:
Let $X ~ B(n, p)$. Let $lambda = n p$, 

so $p = lambda/n$.

$P(X=k) = vec(n, k) p^k (1-p)^(n-k)$

$= (n(n-1)...(n-k+1)) / (k!) (lambda/n)^k (1 - lambda/n)^(n-k)$

$= (lambda^k)/(k!) [ (n(n-1)...(n-k+1))/n^k ] (1 - lambda/n)^n (1 - lambda/n)^(-k)$

Consider the limit as $n -> oo$:
1. $(n(n-1)...(n-k+1))/n^k = 1 (1-1/n) ... (1-(k-1)/n) -> 1$
2. $(1 - lambda/n)^n -> e^(-lambda)$ (Standard limit definition of exponential)
3. $(1 - lambda/n)^(-k) -> 1$
Thus, $lim_(n->oo) P(X=k) = (lambda^k)/(k!) e^(-lambda) qed$

= Memorylessness of Geometric Distribution

== Prove that geometric distribution is memoryless:
Let $X ~ G e o(p)$, so $P(X > n) = (1-p)^n$.

$P(X > n+m | X > n) = (P(X > n+m and X > n)) / (P(X > n))$

Since $n+m > n$, the intersection is just $X > n+m$.

$= (P(X > n+m)) / (P(X > n)) = ((1-p)^(n+m)) / ((1-p)^n)$

$= (1-p)^m = P(X > m) qed$

== Prove that memoryless r.v. is geometric distribution:
Let $X$ be a discrete r.v. on ${0, 1, ...}$.

Let $G(n) = P(X > n)$.

Memoryless property implies $P(X > n+m | X > n) = P(X > m)$.

$=> (P(X > n+m)) / (P(X > n)) = P(X > m)$

$=> G(n+m) = G(n) G(m)$

This is a functional equation, since $G(n)$ is a probability, $0 <= G(n) <= 1$.

$G(1) = G(1)$.

$G(2) = G(1+1) = G(1)^2$.

By induction, $G(n) = [G(1)]^n$.

Let $1-p = G(1) = P(X > 1)$.

Then $P(X > n) = (1-p)^n$.

$P(X = n) = P(X > n-1) - P(X > n) \ = (1-p)^(n-1) - (1-p)^n \ = (1-p)^(n-1) [1 - (1-p)] = p(1-p)^(n-1)$.

This is the PMF of a Geometric distribution. $qed$

= Miscellaneous

Prove $E[E[Y|X]] = E[Y]$:

$E[E[(Y|X)]] = integral_(-oo)^oo E[Y|x] f_X (x) d x \ eq integral_(-oo)^oo [integral_(-oo)^oo y f_(Y|X) (Y|x) d y] f_X (x) d x\ eq integral_(-oo)^oo integral_(-oo)^oo y (f_(X Y) (x, y))/(f_X (x)) f_X (x) d x d y \ eq integral_(-oo)^oo y [integral_(-oo)^oo f_(X Y) (x,y) d x] d y \ eq integral_(-oo)^oo y f_Y (y) d y eq E[Y] qed$
