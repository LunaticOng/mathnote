#set page(
  paper: "a4",
  columns: 2,
  margin: 0.4cm,
)

#set heading(
  numbering: "I.1.a",
)

#set text(
  font: "Formera",
)

#set math.equation(
  numbering: "(1.1)",
)

#place(
  top + center,
  float: true,
  scope: "parent",
  text(18pt)[Series and Transforms],
)


= Taylor Series

$f(x)=sum_(n=0)^(oo) (f^((n))(a))/(n!) (x-a)^n$

where, $f^((n))(a)= (d^n f(x))/(d x^n) |_(x=a)$

== Series Expansion of Common Functions

#table(
  columns: (auto, auto),
  table.header($f(x)$, [Series Expansion]),
  $exp(x)$, $sum_(n=0)^(oo) x^n/(n!)$,
  [$sin(x)$], [$sum_(n=0)^(oo) (-1)^n x^(2 n + 1)/(2 n + 1)!$],
  [$cos(x)$], [$sum_(n=0)^(oo) (-1)^n x^(2 n)/(2 n)!$],
  [$sinh(x)$], [$sum_(n=0)^(oo) x^(2 n + 1)/(2 n + 1)!$],
  [$cosh(x)$], [$sum_(n=0)^(oo) x^(2 n)/(2 n)!$],
  [$tan^(-1)(x)$], [$sum_(n=0)^(oo) (-1)^n x^(2 n + 1)/(2 n + 1)$, $|x| < 1$],
  [$ln(1 + x)$], [$sum_(n=1)^(oo) (-1)^(n + 1) x^n/n$, $|x| < 1$],
  [$1/(1 - x)$], [$sum_(n=0)^(oo) x^n$, $abs(x) < 1$],
)

= Laurent Series

$f(x)=sum_(n=-oo)^(oo) c_n (x - a)^n$

where, $c_n = 1/(2 pi j) integral.cont.ccw_C f(z)/(z - a)^(n + 1) d z$

= Convolution

== Continuous Time Convolution:

$x(t) convolve y(t) eq integral_(-infinity)^(infinity) x(t minus tau) y(tau) d tau$

== Discrete Time Convolution:

$x(n) convolve y(n) eq sum_(k=-oo)^(oo) x(k) y(n - k)$

== Properties of Convolution

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt + gray,
  [*Commutative*], $x * y = y * x$,
  [*Associative*], $(x * y) * z = x * (y * z)$,
  [*Distributive*], $x * (y + z) = (x * y) + (x * z)$,
  [*Shift Property*], $x(t) * delta(t-t_0) = x(t-t_0) \ 
  x[n] * delta[n-n_0] = x[n-n_0]$,
  [*Width Property*], [If duration of $x$ is $T_1$ and $y$ is $T_2$, duration of $x*y$ is $T_1 + T_2$],
  [*Area Property*], [Area$(x * y)$ = Area$(x)$ $dot$ Area$(y)$],
)

=== Some special cases

$a^n u[-n] convolve b^n u[n] eq cases((a^(n+1))/(b-a)\, n < 0, (b^(n+1))/(b-a)\, n >= 0)$

$-a^n u[-n-1] convolve b^n u[n] eq cases((a^(n+1))/(b-a)\, n < -1, (b^(n+1))/(b-a)\, n >= -1)$

= Continuous Time Fourier Series

== Trigonometric Form

$x(t) = a_0/2 + sum_(n eq 1)^(oo) [a_n cos((2pi n t) / T)+b_n sin((2pi n t)/T)]$

$a_n=1/T integral_T x(t) cos((n pi x) / T) d x$

$b_n=1/T integral_T x(t) sin((n pi x) / T) d x$

== Compact Trigonometric Form

$x(t)=a_0/2 +sum_(n=1)^(oo) sqrt(a_n^2+b_n^2) cos((2 pi n t)/T + tan^(-1)(- b_n/a_n))$

== Exponential Form

$x(t)=sum_(n=-oo)^(oo) c_n exp((j 2 pi n t)/T)$

$c_n = 1/T integral_T x(t) exp((-j 2 pi n t)/T)$

== Dirichlet conditions

+ absolutely integrable over a period
+ finite number of discontinuities in a period
+ finite number of maxima and minima in a period

== Parseval's theorem for power signals

$1/T integral_T |x(t)|^2 d t = 1/T integral_T x(t) [sum_(m=-oo)^(oo) c_m exp((j 2 pi m t)/T)]^* d t$
$\ = sum_(m=-oo)^(oo) c_m^* [1/T integral_T x(t) exp((-j 2 pi m t)/T) d t]$
$\ = sum_(m=-oo)^(oo) c_m^* c_m = sum_(m=-oo)^(oo) |c_m|^2$

= Continuous Time Fourier Transform

== $f$ form

$X(f) = integral_(-oo)^(oo) x(t) exp(- j 2 pi f t) d t$

$x(t) = integral_(-oo)^(oo) X(f) exp(j 2 pi f t) d f$

== $omega$ form

$X(j omega) = integral_(-oo)^(oo) x(t) exp(- j omega t) d t$

$x(t) = 1/(2 pi) integral_(-oo)^(oo) X(j omega) exp(j omega t) d omega$

== Parseval's theorem for energy signals

$integral_(-oo)^(oo) |x(t)|^2 d t
= integral_(-oo)^(oo) x(t) [1/(2 pi) integral_(-oo)^(oo) X(j omega) exp(j omega t) d omega]^* d t$
$\ = 1/(2 pi) integral_(-oo)^(oo) X^*(j omega) [integral_(-oo)^(oo) x(t) exp(- j omega t) d t] d omega$
$\ = 1/(2 pi) integral_(-oo)^(oo) X^*(j omega) X(j omega) d omega = 1/(2 pi) integral_(-oo)^(oo) |X(j omega)|^2 d omega$

== CTFT Properties

#table(
  columns: (auto, 1fr, 1fr),
  align: horizon,
  stroke: 0.5pt + gray,
  [*Property*], [*Time Domain*], [*Frequency Domain*],

  [Linearity], $a x_1(t) + b x_2(t)$, $a X_1(f) + b X_2(f)$,
  [Time Shifting], $x(t - t_0)$, $X(f) exp(- j 2 pi f t_0)$,
  [Freq Shifting], $x(t) exp(j 2 pi f_0 t)$, $X(f - f_0)$,
  [Scale Property], $x(a t)$, $1/abs(a) X(f/a)$,
  [Duality], $X(t)$, $x(-f)$,
  [Time Diff], $(d^n)/(d t^n) x(t)$, $(j 2 pi f)^n X(f)$,
  [Time Integration], $integral_(-oo)^(t) x(tau) d tau$, $1/(j 2 pi f) X(f) + 1/2 X(0) delta(f)$,
  [Freq Diff], $t^n x(t)$, $(-1/(j 2 pi))^n (d^n)/(d f^n) X(f)$,
  [Convolution], $x_1(t) convolve x_2(t)$, $X_1(f) X_2(f)$,
  [Multiplication], $x_1(t) x_2(t)$, $X_1(f) convolve X_2(f)$,
)

== Fourier Transforms of Periodic Signals
// Ziemer page 60, 2.4.6

$sum_(m eq -oo)^oo p(t-m T_s) <=> sum_(n eq -oo)^oo f_s P(n f_s) delta(f-n f_s)$

== Poisson Summation Formula

$sum_(n eq -oo)^(oo) x(t - n T) = 1/T sum_(k=-oo)^(oo) X(k/T) exp(j 2 pi k t / T)$

== Wiener Khinchine Theorem

$S_n (f) &= lim_(T->oo) E{|abs(F(n_(2T) (t)))|^2}/(2T)$

$"where" |abs(F(n_(2T) (t)))|^2 eq |integral_(-T)^T n(t) e^(-j omega t) d t|^2$

$"and" E{|abs(F(n_(2T) (t)))|^2} = integral_(-T)^T integral_(-T)^T R_n (t-sigma) e^(-j omega (t-sigma)) d t d sigma \
"let" u = t - sigma and v = t
, "with graphical variable transform" \ S_n (f) eq integral_(u=-2T)^0 R_n (u) e^(-j omega u) (integral_(-T)^(u+T)d v) d u \ plus integral_(u=0)^(2T) R_n (u) e^(-j omega u) (integral_(u-T)^T d v) d u \ eq lim_(T->oo) integral_(-2T)^(2T) (1-abs(u)/(2T)) R_n (u) e^(-j omega u) d u eq F{R_n (t)}$

== CTFT Pairs

#table(
  columns: (auto, auto),
  table.header($x(t)$, $X(f)$),
  [$delta(t)$], [$1$],
  [$s g n(t)$], [$1/(j pi f)$],
  [ $u(t)$], [ $1/(j 2 pi f) + 1/2 delta(f)$ ],
  [ $exp(j 2 pi f_0 t)$], [ $delta(f - f_0)$ ],
  [ $cos(2 pi f_0 t)$], [ $1/2 [delta(f - f_0) + delta(f + f_0)]$ ],
  [ $sin(2 pi f_0 t)$], [ $1/(2 j)[delta(f - f_0) - delta(f + f_0)]$ ],
  [ $exp(- a t) u(t)$], [ $1/(a + j 2 pi f)$ , $a > 0$],
  [$exp(-a abs(t))$], [$(2a)/(a^2 + (2pi f)^2)$],
  $exp(-a t^2)$, $sqrt(pi/a) exp(- pi^2/a f^2)$,
  $Pi(t/T)$, $T sinc(f T)$,
  $T r i(t/T)$, $T sinc^2(f T)$,
)

= Sampling Theorem

For a bandlimited signal $x(t)$ with $X(f) = 0$ for $|f| > f_m$.
If the sampling frequency $f_s >= 2 f_m$ (Nyquist rate), then $x(t)$ can be perfectly reconstructed.

$x(t) = sum_(n=-oo)^(oo) x(n T_s) sinc((t - n T_s)/T_s)$

where $T_s = 1/f_s$.

= Discrete Time Fourier Series

$x[n] = sum_(k=0)^(N-1) c_k exp(j k Omega_0 n)$, where $Omega_0 = (2 pi) / N$

$c_k = 1/N sum_(n=0)^(N-1) x[n] exp(-j k Omega_0 n)$

== DTFS Properties

#table(
  columns: (auto, 4cm, auto),
  align: horizon,
  stroke: 0.5pt + gray,
  table.header([*Property*], [*Time Domain* $x[n]$], [*Frequency Domain* $a_k$]),

  [Linearity], $A x[n] + B y[n]$, $A a_k + B b_k$,

  [Time Shift], $x[n - n_0]$, $a_k e^(-j k (2pi)/N n_0)$,

  [Frequency Shift], $e^(j M (2pi)/N n) x[n]$, $a_(k - M)$,

  [Conjugation], $x^*[n]$, $a^*_(-k)$,

  [Time Reversal], $x[-n]$, $a_(-k)$,

  [Periodic Convolution], $sum_(r=0)^(N-1) x[r] y[n-r]$, $N a_k b_k$,

  [Multiplication], $x[n] y[n]$, $sum_(l=0)^(N-1) a_l b_(k-l)$,

  [Parseval's Relation], $1/N sum_(n=0)^(N-1) |x[n]|^2$, $sum_(k=0)^(N-1) |a_k|^2$,
)

== DTFS Pairs

#table(
  columns: (1fr, 1fr),
  align: horizon,
  stroke: 0.5pt,
  table.header([*Signal* $x[n]$], [*FS Coefficients* $a_k$]),

  $delta[n]$, [periodic impulse],
  $1/N$,

  $1$, [constant],
  $delta[k]$,

  $e^(j M (2pi)/N n)$, $delta[k - M]$,

  $cos(M (2pi)/N n)$, $1/2 (delta[k-M] + delta[k+M])$,

  $sin(M (2pi)/N n)$, $1/(2j) (delta[k-M] - delta[k+M])$,
)

= Discrete Time Fourier Transform

== $F$ Form

$x[n] eq integral_1 X(F) e^(j 2 pi F n) d F <-> X(F) eq sum_(n=-oo)^(oo) x[n] e^(-j 2 pi F n)$

== $Omega$ Form

$x[n] eq 1/(2pi) integral_(2 pi) X(e^(j Omega))e^(j Omega n) d Omega <-> \ X(e^(j Omega)) eq sum_(n=-oo)^(oo) x[n] e^(-j Omega n)$

== DTFT Properties

// Scaling hasn't been written

#table(
  columns: (auto, 1fr, 1fr),
  align: horizon,
  stroke: 0.5pt + gray,
  [*Property*], [*Time Domain*], [*Frequency Domain*],

  [Linearity], $a x_1[n] + b x_2[n]$, $a X_1(F) + b X_2(F)$,
  [Time Shifting], $x[n - n_0]$, $e^(-j 2 pi F n_0) X(F)$,
  [Freq Shifting], $e^(j 2 pi F_0 n)x[n]$, $X(F-F_0)$,
  [Conjugation], $x^*[n]$, $X^*(-F)$,
  [Time Reversal], $x[-n]$, $X(-F)$,
  [Diff in Time], $x[n] - x[n - 1]$, $(1-e^(-j 2 pi F)) X(F)$,
  [Accumulation], $sum_(m=-oo)^(n) x[m]$, $X(F)/(1-e^(-j 2 pi F)) + 1/2 X(0) delta_1(f)$,
  [Convolution], $x_1[n] * x_2[n]$, $1/N X_1(F) * X_2(F)$,
)

== DTFT Pairs

#table(
  columns: 3,
  table.header($x[n]$, $X(e^(j Omega))$, [ROC]),
  $delta[n]$, $1$, [all $Omega$],
  $n a^n u[n]$, $(alpha e^(j Omega)) / (e^(j Omega) - alpha)^2$, $abs(alpha)<1$,
  $-n a^n u[-n-1]$, $(alpha e^(j Omega)) / (e^(j Omega) - alpha)^2$, $abs(alpha)>1$,
  $alpha^n sin(Omega_0 n) u[n]$,
  $(e^(j Omega) alpha sin(Omega_0))/(e^(j 2 Omega)-2alpha cos(Omega_0) + alpha^2)$,
  $abs(alpha)<1$,

  $-alpha^n sin(Omega_0 n) u[-n-1]$,
  $(e^(j Omega) alpha sin(Omega_0))/(e^(j 2 Omega)-2alpha cos(Omega_0) + alpha^2)$,
  $abs(alpha)>1$,

  $alpha^n cos(Omega_0 n) u[n]$,
  $(e^(j Omega) [e^(j Omega) - alpha cos(Omega_0)])/(e^(j 2 Omega)-2alpha cos(Omega_0) + alpha^2)$,
  $abs(alpha)<1$,

  $-alpha^n cos(Omega_0 n) u[-n-1]$,
  $(e^(j Omega) [e^(j Omega) - alpha cos(Omega_0)])/(e^(j 2 Omega)-2alpha cos(Omega_0) + alpha^2)$,
  $abs(alpha)>1$,

  $alpha^abs(n)$, $(e^(j Omega))/(e^(j Omega) - alpha)-(e^(j Omega))/(e^(j Omega) - 1/alpha)$, $abs(alpha)<1$,
)

= Discrete Fourier Transform (DFT)

$X[k] = sum_(n=0)^(N-1) x[n] W_N^(k n), quad k = 0, 1, ..., N-1$

$x[n] = 1/N sum_(k=0)^(N-1) X[k] W_N^(-k n), quad n = 0, 1, ..., N-1$

where $W_N = e^(-j 2 pi / N)$.

= Laplace Transform

$X(s) = integral_(oo)^(oo) x(t) exp(- s t) d t$

$x(t) = 1/(2 pi j) integral_(c - j oo)^(c + j oo) X(s) exp(s t) d s$

== Unilateral Laplace Transform

$"if" x(t) = 0, forall t<0$ =>
$X(s)=integral_(0^-)^(oo) x(t) exp(- s t) d t$

== Laplace Transform Properties

#table(
  columns: (auto, 1fr, 1fr),
  align: horizon,
  stroke: 0.5pt + gray,
  [*Property*], [*Time Domain*], [*s-Domain*],

  [Linearity], $a x_1(t) + b x_2(t)$, $a X_1(s) + b X_2(s)$,
  [Time Shifting], $x(t - t_0) u(t-t_0)$, $exp(- s t_0) X(s)$,
  [s-Domain Shift], $x(t) exp(- s_0 t)$, $X(s + s_0)$,
  [Scale Property], $x(a t)$, $1/abs(a) X(s/a)$,
  [Time Reversal], $x(minus t)$, $X(minus s)$,
  [Time Diff], $(d^n)/(d t^n) x(t)$, $s^n X(s) minus sum_(k=0)^(n - 1) s^(n - 1 - k) (d^k)/(d t^k) x(0^-)$,
  [Time Int], $integral_0^(t) x(tau) d tau$, $1/s X(s)$,
  [s-Domain Diff], $t^n x(t)$, $(minus 1)^n (d^n)/(d s^n) X(s)$,
  [Convolution], $x_1(t) convolve x_2(t)$, $X_1(s) X_2(s)$,
  [Freq Integration], $1/t x(t)$, $integral_(s)^oo X(sigma) d sigma$,
  [Multiplication], $x_1(t) x_2(t)$, $1/(2 pi j) X_1(s) convolve X_2(s)$,
  table.cell(colspan: 3)[*Initial Value Thm:* $lim_(t->0) f(t) eq lim_(s->oo) s F(s)$ \ *Final Value Thm:* $lim_(t->oo) f(t) eq lim_(s->0) s F(s)$],
)

== Laplace Transform Pairs

#table(
  columns: 3,
  table.header($x(t)$, $X(s)$, [ROC]),
  [$delta(t)$], [$1$], [all $s$],
  [ $t^n u(t)$], [ $Gamma(n+1)/s^(n + 1)$,  ], $Re(s) > 0$,
  [ $exp(- a t) u(t)$], [ $1/(s + a)$,  ], $Re(s) > -a$,
  $-exp(-a t) u(t)$, $1/(s + a),$, $Re(s) < -a$,
  [$e^(-a t) cos(omega_0 t) u(t)$], [ $(s+a)/((s + a)^2 + omega_0^2)$,  ], $Re(s) > -Re(a)$,
  [$e^(-a t) sin(omega_0 t) u(t)$], [ $omega_0/((s + a)^2 + omega_0^2)$,  ], $Re(s) > -Re(a)$,
  $sinh(a t) u(t)$, $a/(s^2 - a^2)$, $Re(s)>abs(a)$,
  $cosh(a t) u(t)$, $s/(s^2 - a^2)$, $Re(s)>abs(a)$,
  $ln(t) u(t)$, $-1/s [ln(s)+gamma]$, $Re(s) > 0$,
  $J_n (omega t) u(t)$, $(sqrt(s^2+omega^2)-s)^n/(omega^n sqrt(s^2+omega^2))$, $Re(s) > 0\ , n > -1$,
  $e r f(t)u(t)$, $1/s e^(s^2/4)(1-e r f(s/2))$, $Re(s) > 0$,
)

= Z Transform

$X(z) = sum_(n=-oo)^(oo) x[n] z^(-n)$

$x[n] = 1/(2 pi j) integral.cont_C X(z) z^(n - 1) d z$

== Z Transform Properties

#table(
  columns: (auto, 1fr, 1fr),
  align: horizon,
  stroke: 0.5pt + gray,
  [*Property*], [*Time Domain*], [*z-Domain*],

  [Linearity], $a x_1[n] plus b x_2[n]$, $a X_1(z) plus b X_2(z)$,
  [Time Shifting], $x[n minus n_0]$, $z^(-n_0) X(z)$,
  [Scale Property], $x[n/a]$, $z^(-n/a) X(z)$,
  [Time Reversal], $x[-n]$, $X(1/z)$,
  [Conjugation], $x^* [n]$, $X^* (z^*)$,
  [Accumulation], $sum_(n=-oo)^n x[n]$, $1/(1-z^(-1)) X(z)$,
  [Mult by $z_0^n$], $z_0^n x[n]$, $X(z/z_0)$,
  [Mult by $n$], $n x[n]$, $-z (d X(z))/(d z)$,
  [Convolution], $x_1[n] convolve x_2[n]$, $X_1(z) X_2(z)$,
  [First Backward Diff], $x[n] minus x[n-1]$, $(1 minus z^(-1)) X(z)$,
  table.cell(colspan: 3)[*Initial Value Thm:* $x[0] = lim_(z->oo) X(z)$ (if causal) \ *Final Value Thm:* $lim_(n->oo) x[n] = lim_(z->1) (z-1) X(z)$],
)

== Z Transform Pairs

#table(
  columns: 3,
  align: left,
  table.header([Signal], [Z transform], [ROC]),

  $delta[n]$, $1$, $"all z"$,
  $delta[n-n_0]$, $z^(-n_0)$, $z eq.not 0$,
  $a^n u[n]$, $1/(1 - a z^(-1))$, $abs(z) gt abs(a)$,
  $-a^n u[-n-1]$, $1/(1 - a z^(-1))$, $abs(z) lt abs(a)$,

  $n a^n u[n]$, $(a z^(-1))/ (1 - a z^(-1))^2$, $|z| > |a|$,

  $-n a^n u[-n-1]$, $(a z^(-1))/((1-a z^(-1))^2)$, $abs(z) < abs(a)$,

  $a^n cos(omega_0 n) u[n]$, $(1-a z^(-1) cos(omega_0))/(1-2a z^(-1) cos(omega_0)+a^2 z^(-2))$, $|z| > abs(a)$,

  $a^n sin(omega_0 n) u[n]$, $(a z^(-1) sin(omega_0))/(1-2a z^(-1) cos(omega_0)+a^2 z^(-2))$, $|z| > abs(a)$,
)


= Hilbert Transform

$"Time Domain:" hat(x)(t) = x(t) convolve 1/(pi t)$

$"Frequency Domain:" hat(X)(f) eq [-j dot s g n(f)] X(f)$

== Hilbert Transform Properties

#table(
  columns: (1fr),
  stroke: none,
  $abs(hat(X)(f))^2 eq.triple abs(F{hat(x)(t)})^2 eq abs(X(f))^2$,
  [A signal and its Hilbert transform are orthogonal],
  $hat(m(t)c(t)) eq m(t)hat(c(t)) \ "where" m(t) "is lowpass and" c(t) "is highpass"$,
)

== Hilbert Transform Pairs

#table(
  columns: (auto, auto),
  table.header($x(t)$, $hat(x)(t)$),
  $delta(t)$, $1/(pi t)$,
  $1/t$, $-pi delta(t)$,
  $m(t) cos(2 pi f_c t)$, $m(t) sin(2 pi f_c t)$,
  $m(t) sin(2 pi f_c t)$, $- m(t) cos(2 pi f_c t)$,
  $sin(t)/t$, $(1 - cos(t))/t$,
  $1/(1+t^2)$, $t/(1+t^2)$,
)