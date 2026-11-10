#let report(
  body,
  title: [],
  course: [],
  student-name: [],
  student-id: [],
  date: [],
  show-toc: false,
  font-size: 11pt,
  page-margin: 25mm,
) = {
  set page(
    paper: "a4",
    margin: page-margin,
    numbering: "1",
    number-align: center + bottom,
  )

  set text(
    font: "Yu Mincho",
    size: font-size,
    lang: "ja",
  )

  set figure(
    supplement: it => {
      if it.func() == table {
        [表]
      } else {
        [図]
      }
    },
  )

  set par(justify: true, first-line-indent: 1em)

  set heading(numbering: "1.1")

  set math.equation(
    numbering: "(1)",
    supplement: [式],
  )

  // 第一階層の見出しデザイン
  show heading.where(level: 1): set text(size: 18pt, weight: "bold")
  // 第二階層の見出しデザイン
  show heading.where(level: 2): set text(size: 14pt, weight: "bold")

  // タイトル
  align(center)[
    #text(size: 18pt, weight: "bold")[
      #title
    ]
  ]

  v(5mm)

  // 学籍番号と名前
  align(right)[
    授業名 : #course \
    学籍番号 : #student-id \
    氏名 : #student-name \
    提出日 : #date \
  ]

  v(10mm)

  if show-toc {
    outline(
      title: [目次],
      depth: 2,
    )

    pagebreak()
  }

  body
}



