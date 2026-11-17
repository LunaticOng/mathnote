#set page(
  paper: "a4",
  columns: 1,
  margin: .7cm,
)

#set text(10pt, font: "Formera")

#let title = [Noise Performace]

#place(
  top + center,
  float: true,
  scope: "parent",
  text(17pt)[*#title*],
)

= Single sideband modulation

#table(
 columns: (auto, auto, auto),
 [], [], [],
)

= Angle modulation

#table(
 columns: (auto, auto, auto),
 [], [FM], [PM],
 table.cell(rowspan: 2)[Signal shape],
 table.cell(colspan: 2)[$A_c = cos[theta_i (t) ": instantaneous phase"] = A_c cos[2pi f_c t + phi(t)]$ \
   $f_i (t)=1/(2pi) (d theta_i (t))/(d t)$],
 [$f_i (t) = f_c + k_f m(t)$ \ :instantaneous frequency], [$phi (t) = k_p m(t)$ \ : phase deviation],
 [Modulation index],
 table.cell(
   colspan: 2,
 )[$Delta f = |f_i (t) - f_c|_max$: frequency deviation \ $beta = (Delta f)/f_m$: modulation index],
 [Bandwidth],
 [Carson's Rule: \ $B_T = 2(beta + 1) f_m$ \ General curve: \ $B_T = 2 n_max f_m$ \ $n_max$ is the largest integer  that makes |$J_n (beta)| > 0.01$],
)

= Comparison of systems

#table(
 columns: (auto, auto, auto, auto),
 [], [$B_T$], [Power efficiency], [FOM],
 [AM], [], [], [1],
 [DSB/SSB], [], [], [1],
 [VSB], [], [], [1],
 [FM], [], [], [],
 [PM], [], [], [],
)

