#import "template.typ": report

#show: report.with(
  title: [英語教育における「コミュニケーション能力」とは何か],
  course: [英語教育論],
  student-id: [hororon0909],
  student-name: [ほろろ],
  date: [2026年11月10日],
  show-toc: true,
  page-margin: 25mm,
  font-size: 14pt,
)

= はじめに

== 理論

物体の速度を次のように定義する
$ v = x / t $ <velocity>

$ x = v t $ <velocity2>

@velocity より，速度を計算することができる
@velocity2 は @velocity を変形したものである

= 考察

#figure(
  table(
    columns: 2,
    table.header([時間 (s)], [距離 (m)]),
    [1.0], [2.5],
    [2.0], [5.0],
    [3.0], [7.5],
  ),
) <graph1>

@graph1 から今回の実験で得られたデータを確認できる

#figure(
  image("images/sample.png"),
) <picture1>

@picture1 は今回の実験で利用した実験器具の写真である

= まとめ
