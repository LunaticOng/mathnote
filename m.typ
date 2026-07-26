#set page(
  paper: "a4",
  margin: 0.5cm,
  flipped: true,
)

#set text(
  size: 12pt,
  font: (
    "jf open 粉圓 2.1",
    "Itim",
    "Noto Serif Lao",
  ),
)

#let key(l1: "", l2: "", l3: "", w: 1.65cm, h: 1.65cm) = block(
  width: w,
  height: h,
  inset: 3pt,
  stroke: 1pt + gray,
  radius: 7pt,
  {
    align(left + top)[#l3]
    align(right)[#l1]
    align(left + bottom)[#l2]
  },
)

#stack(
  dir: ltr,
  spacing: 4pt,
  0.000cm,
  key(l1: "`", l2: "_", l3: "฿"),
  key(l1: "1", l2: "=", l3: "+"),
  key(l1: "2", l2: "๒", l3: "\""),
  key(l1: "3", l2: "๓", l3: "/"),
  key(l1: "4", l2: "๔", l3: ","),
  key(l1: "5", l2: "๕", l3: "?"),
  key(l1: "6", l2: "ู", l3: "ุ"),
  key(l1: "7", l2: "๗", l3: "_"),
  key(l1: "8", l2: "๘", l3: "."),
  key(l1: "9", l2: "๙", l3: "("),
  key(l1: "0", l2: "๐", l3: ")"),
  key(l1: "-", l2: "๑", l3: "-"),
  key(l1: "=", l2: "๖", l3: "%"),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  2.475cm,
  key(l1: "Q", l2: "็", l3: "๊"),
  key(l1: "W", l2: "ต", l3: "ฤ"),
  key(l1: "E", l2: "ย", l3: "ๆ"),
  key(l1: "R", l2: "อ", l3: "ญ"),
  key(l1: "T", l2: "ร", l3: "ษ"),
  key(l1: "Y", l2: "่", l3: "ึ"),
  key(l1: "U", l2: "ด", l3: "ฝ"),
  key(l1: "I", l2: "ม", l3: "ซ"),
  key(l1: "O", l2: "ว", l3: "ถ"),
  key(l1: "P", l2: "แ", l3: "ฒ"),
  key(l1: "[", l2: "ใ", l3: "ฯ"),
  key(l1: "]", l2: "ฌ", l3: "ฦ"),
  key(l1: "\\", l2: "", l3: "ํ"),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  4.125cm,
  key(l1: "A", l2: "้", l3: "๋"),
  key(l1: "S", l2: "ท", l3: "ธ"),
  key(l1: "D", l2: "ง", l3: "ำ"),
  key(l1: "F", l2: "ก", l3: "ณ"),
  key(l1: "G", l2: "ั", l3: "์"),
  key(l1: "H", l2: "ี", l3: "ื"),
  key(l1: "J", l2: "า", l3: "ผ"),
  key(l1: "K", l2: "น", l3: "ช"),
  key(l1: "L", l2: "เ", l3: "โ"),
  key(l1: ";", l2: "ไ", l3: "ฆ"),
  key(l1: "'", l2: "ข", l3: "ฑ"),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  5.775cm,
  key(l1: "Z", l2: "บ", l3: "ฎ"),
  key(l1: "X", l2: "ป", l3: "ฏ"),
  key(l1: "C", l2: "ล", l3: "ฐ"),
  key(l1: "V", l2: "ห", l3: "ภ"),
  key(l1: "B", l2: "ิ", l3: "ั"),
  key(l1: "N", l2: "ค", l3: "ศ"),
  key(l1: "M", l2: "ส", l3: "ฮ"),
  key(l1: ",", l2: "ะ", l3: "ฟ"),
  key(l1: ".", l2: "จ", l3: "ฉ"),
  key(l1: "/", l2: "พ", l3: "ฬ"),
)

#v(2cm)


#stack(
  dir: ltr,
  spacing: 4pt,
  0.000cm,
  key(l1: "`", l2: "\"", l3: "'"),
  key(l1: "1", l2: text(green)[ຢ], l3: "1"),
  key(l1: "2", l2: text(blue)[ຟ], l3: "2"),
  key(l1: "3", l2: "ໂ", l3: "3"),
  key(l1: "4", l2: text(red)[ຖ], l3: "4"),
  key(l1: "5", l2: "ຸ", l3: "໌"),
  key(l1: "6", l2: "ູ", l3: "ຼ"),
  key(l1: "7", l2: text(blue)[ຄ], l3: "5"),
  key(l1: "8", l2: text(green)[ຕ], l3: "6"),
  key(l1: "9", l2: text(green)[ຈ], l3: "7"),
  key(l1: "0", l2: text(red)[ຂ], l3: "7"),
  key(l1: "-", l2: text(blue)[ຊ], l3: "8"),
  key(l1: "=", l2: "ໍ", l3: "9"),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  2.475cm,
  key(l1: "Q", l2: "ົ", l3: "ົ້"),
  key(l1: "W", l2: "ໄ", l3: "0"),
  key(l1: "E", l2: "ຳ", l3: "*"),
  key(l1: "R", l2: text(blue)[ພ], l3: "_"),
  key(l1: "T", l2: "ະ", l3: "+"),
  key(l1: "Y", l2: "ິ", l3: "ິ້"),
  key(l1: "U", l2: "ີ", l3: "ີ້"),
  key(l1: "I", l2: text(blue)[ຮ], l3: text(blue)[ຣ]),
  key(l1: "O", l2: text(blue)[ນ], l3: text(red)[ໜ]),
  key(l1: "P", l2: text(blue)[ຍ], l3: "ຽ"),
  key(l1: "[", l2: text(green)[ບ], l3: "-"),
  key(l1: "]", l2: text(blue)[ລ], l3: text(red)[ຫຼ]),
  key(l1: "\\", l2: "/", l3: "\\"),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  4.125cm,
  key(l1: "A", l2: "ັ", l3: "ັ້"),
  key(l1: "S", l2: text(red)[ຫ], l3: ";"),
  key(l1: "D", l2: text(green)[ກ], l3: "."),
  key(l1: "F", l2: text(green)[ດ], l3: ","),
  key(l1: "G", l2: "ເ", l3: ":"),
  key(l1: "H", l2: "້", l3: "໊"),
  key(l1: "J", l2: "່", l3: "໋"),
  key(l1: "K", l2: "າ", l3: "!"),
  key(l1: "L", l2: text(red)[ສ], l3: "?"),
  key(l1: ";", l2: text(blue)[ວ], l3: "%"),
  key(l1: "'", l2: text(blue)[ງ], l3: "="),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  5.775cm,
  key(l1: "Z", l2: text(red)[ຜ], l3: "₭"),
  key(l1: "X", l2: text(green)[ປ], l3: "("),
  key(l1: "C", l2: "ແ", l3: "ຯ"),
  key(l1: "V", l2: text(green)[ອ], l3: "x"),
  key(l1: "B", l2: "ຶ", l3: "ຶ້"),
  key(l1: "N", l2: "ື", l3: "ື້"),
  key(l1: "M", l2: text(blue)[ທ], l3: "ໆ"),
  key(l1: ",", l2: text(blue)[ມ], l3: text(red)[ໝ]),
  key(l1: ".", l2: "ໃ", l3: "$"),
  key(l1: "/", l2: text(red)[ຝ], l3: ")"),
)
