themes = [
  "真赤でおいしそうなリンゴを見つけたので買ってきた。食べるの楽しみ～！",
  "クソリプしかしないやつって、小学校の国語ができないんだと思う。",
  "私は会ったことない人とは付き合えませんね。",
  "世の中に不満を言っても時間がすぎるだけ。\n今は自分にできる事をやればいいんです。",
  "私は趣味主体で生きてます。",
  "桜が咲いてました！",
  "クソリプは全部ブロックしてます。",
  "今日はバレンタインデーです！",
]

themes.each do |theme|
  Theme.seed(:content) do |s|
    s.content = theme
  end
end
