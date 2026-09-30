#import "../main-defs.typ": source

#let title-page() = {
  set page(numbering: none, header: none, footer: none)
  set par(first-line-indent: 0pt, justify: false)
  source(1)
  align(right, text(size: 17pt)[
    А. А. КИРИЛЛОВ \
    А. Д. ГВИШИАНИ
  ])
  v(5mm)
  line(length: 100%, stroke: 0.7pt)
  v(15mm)
  text(size: 23pt)[
    ТЕОРЕМЫ И ЗАДАЧИ \
    ФУНКЦИОНАЛЬНОГО \
    АНАЛИЗА
  ]
  v(16mm)
  text(size: 10pt, weight: "bold")[
    ИЗДАНИЕ ВТОРОЕ, \
    ПЕРЕРАБОТАННОЕ И ДОПОЛНЕННОЕ
  ]
  v(12mm)
  text(size: 10pt, style: "italic")[
    Допущено Министерством высшего и среднего специального образования СССР в
    качестве учебного пособия для студентов вузов, обучающихся по специальностям
    «Математика» и «Прикладная математика»
  ]
  v(1fr)
  text(size: 10pt, weight: "bold")[
    МОСКВА «НАУКА» \
    ГЛАВНАЯ РЕДАКЦИЯ \
    ФИЗИКО-МАТЕМАТИЧЕСКОЙ ЛИТЕРАТУРЫ \
    1988
  ]
  pagebreak()
}
