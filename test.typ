#set page(
  paper: "a4",
  flipped: true,
  margin: 0.6cm
)

#set text(
  font: "Formera"
)

#let title=[Comparison of modulations]

#place(
  top + center,
  float: true,
  scope: "parent",
  text(15pt)[*#title*],
)

= Continuous wave (CW) modulations

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [Modulation], [signal shape], [PSD], [power efficiency],
    [demodulation method], $(S N R)_o$, $(S N R)_i$
  ),
  [AM], $s(t)=A_m [1+k_a ]$
)