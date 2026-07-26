#set page(
  paper: "a4",
  flipped: true,
  margin: 0.65cm
)

#set text(
  font: (
    "jf open 粉圓 2.1", 
    "Itim", 
  )
)

#let key(l1, l2, l3, w: 1.5cm, h: 1.5cm) = rect(
  width: w,
  height: h,
  inset: 6pt,
  stroke: 1pt + gray,
  radius: 4pt,
  {
    align(top+right)[#l1]
    align(bottom+left)[#l3]
    align(top+left)[#l2]
  }
)

#stack(
    spacing: 4pt,
    dir: ltr,
    (0cm),
      key("`", "_", [฿]),
  key([1], [=], [+]),
  key([2], [๒], ["]),
  key([3], [๓], [/]),
  key([4], [๔], [,]),
  key([5], [๕], [?]),
  key([6], [ู], [ุ]),
  key([7], [๗], "_"),
  key([8], [๘], [.]),
  key([9], [๙], [(]),
  key([0], [๐], [)]),
  key([-], [๑], [-]),
  key([=], [๖], [%]),

)
#stack(
    spacing: 4pt,
    dir: ltr,
    (2.15cm),
      key([Q], [็], [๊]),
  key([W], text(green)[ต], [ฤ]),
  key([E], text(blue)[ย], [ๆ]),
  key([R], text(green)[อ], text(blue)[ญ]),
  key([T], text(blue)[ร], text(red)[ษ]),
  key([Y], [่], [ึ]),
  key([U], [ด], text(red)[ฝ]),
  key([I], text(blue)[ม], text(blue)[ซ]),
  key([O], text(blue)[ว], text(red)[ถ]),
  key([P], [แ], text(blue)[ฒ]),
  key("[", [ใ], [ฯ]),
  key("]", text(blue)[ฌ], [ฦ]),
  key("\\", [], [ํ]),

)
#stack(
    spacing: 4pt,
    dir: ltr,
    (3.15cm),
      key([A], [้], [๋]),
  key([S], text(blue)[ท], text(blue)[ธ]),
  key([D], text(blue)[ง], [ำ]),
  key([#underline([F])], text(green)[ก], text(blue)[ณ]),
  key([G], [ั], [์]),
  key([H], [ี], [ื]),
  key([#underline([J])], [า], text(red)[ผ]),
  key([K], text(blue)[น], text(blue)[ช]),
  key([L], [เ], [โ]),
  key([;], [ไ], text(blue)[ฆ]),
  key(['], text(red)[ข], text(blue)[ฑ]),

)
#stack(
    spacing: 4pt,
    dir: ltr,
    (3.85cm),
      key([Z], text(green)[บ], text(green)[ฎ]),
  key([X], text(green)[ป], text(green)[ฏ]),
  key([C], text(blue)[ล], text(red)[ฐ]),
  key([V], text(red)[ห], text(blue)[ภ]),
  key([B], [ิ], [ั]),
  key([N], text(blue)[ค], text(red)[ศ]),
  key([M], text(red)[ส], text(blue)[ฮ]),
  key([,], [ะ], text(blue)[ฟ]),
  key([.], text(green)[จ], text(red)[ฉ]),
  key([/], text(blue)[พ], text(blue)[ฬ]),

)

#v(3cm)

#stack(
  dir: ltr,
  spacing: 4pt,
  0.000cm,
  key("\`", "\"", "'"),
  key("1", text(green)[ຢ], "1"),
  key("2", text(blue)[ຟ], "2"),
  key("3", "ໂ", "3"),
  key("4", text(red)[ຖ], "4"),
  key("5", "ຸ", "໌"),
  key("6", "ູ", "ຼ"),
  key("7", text(blue)[ຄ], "5"),
  key("8", text(green)[ຕ], "6"),
  key("9", text(green)[ຈ], "7"),
  key("0", text(red)[ຂ], "7"),
  key("-", text(blue)[ຊ], "8"),
  key("=", "ໍ", "9"),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  2.15cm,
  key("Q", "ົ", "ົ້"),
  key("W", "ໄ", "0"),
  key("E", "ຳ", "*"),
  key("R", text(blue)[ພ], "_"),
  key("T", "ະ", "+"),
  key("Y", "ິ", "ິ້"),
  key("U", "ີ", "ີ້"),
  key("I", text(blue)[ຮ], text(blue)[ຣ]),
  key("O", text(blue)[ນ], text(red)[ໜ]),
  key("P", text(blue)[ຍ], "ຽ"),
  key("[", text(green)[ບ], "-"),
  key("]", text(blue)[ລ], text(red)[ຫຼ]),
  key("\\", "/", "\\"),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  3.15cm,
  key("A", "ັ", "ັ້"),
  key("S", text(red)[ຫ], ";"),
  key("D", text(green)[ກ], "."),
  key(underline("F"), text(green)[ດ], ","),
  key("G", "ເ", ":"),
  key("H", "້", "໊"),
  key(underline("J"), "່", "໋"),
  key("K", "າ", "!"),
  key("L", text(red)[ສ], "?"),
  key(";", text(blue)[ວ], "%"),
  key("'", text(blue)[ງ], "="),
)

#stack(
  dir: ltr,
  spacing: 4pt,
  3.85cm,
  key("Z", text(red)[ຜ], "₭"),
  key("X", text(green)[ປ], "("),
  key("C", "ແ", "ຯ"),
  key("V", text(green)[ອ], "x"),
  key("B", "ຶ", "ຶ້"),
  key("N", "ື", "ື້"),
  key("M", text(blue)[ທ], "ໆ"),
  key(",", text(blue)[ມ], text(red)[ໝ]),
  key(".", "ໃ", "$"),
  key("/", text(red)[ຝ], ")"),
)
