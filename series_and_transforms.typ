#set page(
  paper: "us-letter",
  columns: 2,
  margin: 1cm,
)

#set text(10pt, font: "Formera")

#let title = [Series and Transforms]

#place(
  top + center,
  float: true,
  scope: "parent",
  text(17pt)[*#title*],
)

= Taylor series


== frequently used series

= Fourier Series

= Fourier transform

== Fourier transform pairs

$e^(-a t) u(t) <-> 1/(a + j 2 pi f)$

$e^(-a abs(t)) <-> (2 a)/(a^2 + (2 pi f)^2)$

$e^(-a t^2) <-> sqrt(pi / a)e^(- (pi^2 f^2)/(a))$

= Laplace transform

== Laplace transform pairs

= Z transform

== Z transform pairs

= Hilbert transform

== Hilbert transform pairs

