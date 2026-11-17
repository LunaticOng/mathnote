#set page(
  paper: "a4",
  columns: 2,
  margin: .5cm,
)

#set text(10pt, font: "Formera")

#let title = [Speical functions]

#place(
  top + center,
  float: true,
  scope: "parent",
  text(17pt)[*#title*],
)

= Pochhammer notation

$x^(underline(n))=x(x-1)...(x-n+1)=(-1)^n (-x)^(overline(n))$

$x^(overline(n))=x(x+1)...(x+n-1)=(-1)^n (-x)^(underline(n))$

== Combination

$mat(x; n)=(x^underline(n))/n!$, $mat(x+n-1; n)=x^(overline(n))/n!$

== Pochhammer-k symbol

$(x)_(n,k)=product_(i=1)^n (x + (i-1)k)$

$Gamma_k (x)=lim_(n->oo)(n! k^n (n k)^(x/k - 1))/((x)_(n,k))$

= Pascal's rule

$mat(n-1; k_1-1\,k_2\,...\,k_p)+...+mat(n-1; k_1\,k_2\,...\,k_p-1)=mat(n; k_1\,k_2\,...\,k_p)$

where $mat(n; k_1\,k_2\,...\,k_m)=n!/(k_1 ! k_2 !...k_m !)$

== Multinomial expansion


= Vandermonde's identity

$sum_(k_1+...+k_p=m) mat(n_1; k_1) mat(n_2; k_2)...mat(n_p; k_p)=mat(n_1+...+n_p; m)$

= Rothe-Hagen identity

$sum_(k=0)^n x/(x+k z) mat(x+k z; k)y/(y+(n-k)z)mat(y+(n-k)z; n-k)=(x+y)/(x+y+n z)mat(x+y+n z; n)$

= Gamma and beta function

$integral_(0)^(oo) t^n e^(- s t) d t = Gamma(n+1) / s^(n+1)$

$Gamma(x+1)=x Gamma(x), Gamma(1/2)=sqrt(pi)$

$B(z_1, z_2)&=integral_0^1 t^(z_1-1) (1-t)^(z_2-1) d t \ &= (Gamma(z_1) Gamma(z_2))/(Gamma(z_1+z_2))$

== upper incomplete gamma function

$Gamma(s, x)=integral_x^(oo) t^(s-1) e^(-t) d t$

$Gamma(s+1, x)=s Gamma(s, x)+x^s e^(-x)$

== lower incomplete gamma function

$gamma(s, x)=integral_0^(x) t^(s-1) e^(-t) d t$

$gamma(s+1, x)=s gamma(s, x) - x^s e^(-x)$

$gamma(s, x)+Gamma(s, x)=Gamma(s)$

== incomplete beta function

$Beta(x \; a, b)=integral_0^x t^(a-1) (1-t)^(b-1) d t$

= Lambert W function

$w e^w=z => w=W_k (z)$

= Trigonometric integral

== sine integral

$S i(x)=integral_0^x sin(t)/t d t$

$s i(x)=-integral_x^(oo) sin(t)/t d t$

$S i(x)- s i(x)=pi/2$

== cosine integral

$C i n(x)=integral_0^x (1-cos(t))/t d t$

$C i(x)=-integral_x^(oo) cos(t)/t d t=gamma + ln(x) - C i n(x)$

== hyperbolic sine integral

$S h i(x)=integral_0^x sinh(t)/t d t= 1/i S i(i x)$

== exponential integral

$E i(x)=-integral_(-x)^(oo) e^(-t)/t d t = integral_(-oo)^x e^t/t d t$

= Bessel function

The solution to the differential equation:

$x^2 y''(x)+x y'(x)+(x^2 - alpha^2)y = 0$

is $y(x)=c_1 J_n (x) + c_2 Y_n (x)$

$J_v (x)&=x_v sum_(m=0)^(oo) ((-1)^m x^(2m))/(2^(2 m+v)m!Gamma(v+m+1)) \ &=1/(2pi) integral_(-pi)^(pi) e^(j(x sin(x) - v x)) d x$

$Y_n (x)=- x^(-n)/pi sum_(m=0)^(n-1) ((n-m-1)!)/(2^(2m-n)m!) x^(2m)$

$I_n (x)=1/(2pi) integral_(-pi)^(pi) e^(x cos(theta)) cos(n theta) d theta$

$integral_(0)^(oo) x e^(-a^2 x^2) I_0 (b x) d x = 1/(2 a^2)exp(b^2/(4a^2))$

= Legendre's Polynomials

The solution to the differential equation: 

$(1-x^2)y^('')-2x y^' + n(n+1)y=0$

is $P_n (x) = 1/(2^n n!) d^n/(d x^n) (x^2-1)^n$

= Hypergeometric function

The solution to Kummer's equation:

$x y''(x)+(b-x)y'(x)-a y=0$

is $\ _1F_1 (a \; b \; x) = 1 + a/b x/1! + (a(a+1))/(b(b+1))x^2/2!+...$

== generalized hypergeometric function

$\ _p F_q (a_1,...,a_p\;b_1,...,b_q\;z) =sum_(n=0)^(oo) (a_1^(underline(n))...a_p^(underline(n)))/(b_1^(underline(n))...b_q^(underline(n))) z^n/n!$

is the solution to the differential equation:

$z product_(j=1)^p (z d/(d z)+a_j)y=product_(j=1)^q (z d/(d z)+b_j-1)y$

= Normal distribution functions

$Phi(x)=1/(sqrt(2pi))integral^x_(-oo) e^(- t^2/2) d t=1/2 + 1/2 e r f(x/sqrt(2))$

$Q(x)=1/sqrt(2 pi) integral_x^(oo) e^(- t^2/2) d t =1/2 e r f c(x/sqrt(2))$

$e r f(x)=2/sqrt(pi) integral^x_(-oo) e^(- t^2) d t=2Phi(x sqrt(2))-1$

$e r f c(x)=2/sqrt(pi) integral_x^(oo) e^(- t^2) d t =2Q(sqrt(2)x)$

$e r f i(x)= (1/i) e r f(i x)$

$e r f(x)+ e r f c(x) = Q(x) + Phi(x) = 1$

= Generalized Heaviside Cover-up method

If: $(P(x))/((x-a)^n Q(x)) = sum_(k=1)^n (A_k)/(x-a)^k +$ others

$A_(n-m) = 1/(m!) lim_(x->a) (d^m)/(d x^m) [(x-a)^n (P(x))/((x-a)^n Q(x))]$

= Generalized Gaussian integral

$integral_(-oo)^(oo) exp(-[a x^2 + b x + c]) = sqrt(pi/a) exp((b^2 - 4a c)/(4a))$