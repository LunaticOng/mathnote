#set text(9pt, font: ("Formera"))

#set page(
  paper: "a4",
  margin: 0.3cm,
)

#let title=[Table of random variables]

#place(
  top + center,
  float: true,
  scope: "parent",
  text(17pt)[*#title*],
)

= Discrete

#table(
  columns: (1fr, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [RV], [pmf],
    [CF], [mean], [variance]
  ),
  [Uniform], $1/n$, $(e^(i a t)-e^(i(b+1)t))/(n(1-e^(i t)))$, $(n+1)/2$, $(n^2-1)/12$,
  [Multinomial], $mat(n!;x_1 !\,...\,x_k !)p_1^(x_1)...p_k^(x_k), k in NN$,$(sum_(i=1)^k p_i e^(t_i))^n$, $n p_i$, $n p_i (1-p_i)$,
  [Geometric (k trials)], $p (1-p)^(k-1), k in NN$, $(p e^(i t))/(1-(1-p)e^(i t)), t< -ln(1-p)$, $1/p$, $(1-p)/p^2$,
  [Geometric (k fails)], $p (1-p)^k, k in NN_0$, $p/(1-(1-p) e^(i t)), t < -ln(1-p)$, $(1-p)/p$, $(1-p)/p^2$,
  [Poisson], $(e^(-lambda) lambda^k)/(k!), k in NN_0$, $e^(lambda(e^(i t)-1))$,$lambda$, $lambda$,
  [Hypergeometric], $(mat(K; k) mat(N-k; n-k))/(N/n) \ k in {max(0, n+k-N), \ ..., min(n, k)}$, $(mat(N-k;n) \ _2 F_1(-n,-K;N-K-n+1;e^(i t)))/(mat(N;n))$, $n (K)/N$, $n K/N (N-K)/N (N-n)/(N-1)$,
  [Negative Binomial], $mat(k+r-1;k) p^r (1-p)^k, k in NN_0$, $(p/(1-(1-p)e^(i t)))^r,t in RR$, $r(1-p)/p$, $(r(1-p))/p^2$
)

= Continuous

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [RV], [pdf],
    [CF], [mean], [variance]
  ),
  [Uniform], $1/(b-a), b in [a,b]$, $cases((e^(i t b)-e^(i t a))/(i t(b-a)) "for" t != 0, 1 "for" t=0)$, $(a+b)/2$, $(b-a)^2/12$,
  [Exponential], $lambda e^(-lambda x), x >= 0$, $lambda/(lambda-i t)$, $1/lambda$, $1/lambda^2$,
  [Normal], $1/(sqrt(2 pi sigma^2)) e^(-((x-mu)^2)/(2 sigma^2))$, $e^(i mu t-(sigma^2 t^2)/2)$, $mu$, $sigma^2$,
  [Weibull], $(beta/alpha) (x/alpha)^(beta-1) e^(- (x/alpha)^beta), x>=0$, $sum_(n=0)^(oo) ((i t)^n alpha^n)/n! Gamma(1+n/beta)$, $alpha Gamma(1+1/beta)$, $alpha^2 [Gamma(1+2/beta)-Gamma^2(1+1/beta)]$,
  [Gamma], $(lambda^k x^(k-1) e^(-lambda k))/(Gamma(k)), x >= 0$, $(1-(i t)/lambda)^(-k)$, $k/lambda$, $k/lambda^2$,
  [Beta], $(x^(alpha-1) (1-x)^(beta-1))/(Beta(a, b)), x in [0,1]$, $\ _1 F_1(alpha;alpha+beta; i t)$, $alpha/(alpha+beta)$, $(alpha beta)/((alpha + beta)^2 (alpha + beta + 1))$,
  [Chi-squared], $1/(2^(k/2) Gamma(k/2)) x^(k/2-1)e^(-x/2)$, $(1-2 i t)^(-k / 2)$, $k$, $2k$,
  [Rayleigh], $x/sigma^2 e^(-x^2/(2sigma^2))$, $1-sigma t e^((-sigma^2 t^2)/2) sqrt(pi/2) (e r f i((sigma t)/sqrt(2))-i)$, $sigma sqrt(pi/2)$, $(4-pi)/2 sigma^2$,
  [Log-normal], $1/(x sigma sqrt(2 pi)) e^(- ((ln(x)-mu)^2)/(2sigma^2))$, $sum_(n=0)^(oo) (i t)^n/n! e^(n mu + (n^2 sigma^2)/2)$, $e^(mu + (sigma^2)/2)$, $(e^(sigma^2)-1)e^(2mu+sigma^2)$,
  [Rician], $x/sigma^2 exp(-(x^2+nu^2)/(2sigma^2))I_0((x nu)/sigma^2)$,[complicated], $sigma sqrt(pi/2)L_(1/2)(-(v^2)/(2sigma^2))$, $2sigma^2+nu^2-(pi sigma^2)/(2)L_(1/2)^(2)(-v^2/(2sigma^2))$,
  [Erlang], $(lambda^k x^(k-1) e^(-lambda x))/((k-1)!) , k in NN, lambda in (0, oo)$, $(1-(i t)/lambda)^(-k)$, $k/lambda$, $k/lambda^2$,
  [Cauchy], $1/(pi gamma [1+((x-x_0)/gamma)^2]) , x_0 in RR, gamma in RR^+$, $e^(x_0 i t - gamma abs(t))$, [undefined], [undefined],
  [Nakagami], $(2m^m)/(Gamma(m)Omega^m)x^(2m-1)e^(- m/Omega x^2)$, [unknown], $Gamma(m+1/2)/Gamma(m)(Omega/m)^(1/2)$, $Omega(1-1/m (Gamma(m+1/2)/Gamma(m))^2)$,
  [Students' t], $Gamma((v+1)/2)/(sqrt(pi nu) Gamma(nu/2)) (1+x^2/nu)^(- (nu+1)/2),v>0$, $(((sqrt(nu)abs(t))^(nu/2) K_(nu/2) (sqrt(nu)abs(t)))/(Gamma(nu/2)2^(nu/2 -1))) "for" nu > 0$, $0 "for" nu > 1$, $cases(v/(v-2) "for" v>2, oo "for" 1<v<=2, "undefined" "otherwise")$,
  [F], $sqrt(((d_1 x)^(d_1)(d_2)^(d_2))/((d_1 x+d_2)^(d_1 + d_2)))/(x Beta(d_1/2, d_2/2)), d_1, d_2 > 0$, [complicated], $d_2/(d_2-2)$, $(2d_2^2(d_1 +d_2 -2))/(d_1(d_2-2)^2(d_2 - 4))$
)