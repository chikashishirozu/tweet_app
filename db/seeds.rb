# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

Tweet.create([
  { content: '今日からProgateでRailsの勉強するよー！', created_at: '2017-03-15 14:54:03', updated_at: '2017-03-15 14:54:03' },
  { content: '投稿一覧ページ作成中！', created_at: '2017-03-15 14:54:35', updated_at: '2017-03-15 14:54:35' },
  { content: 'やっぱりプログラミングは楽しい！', created_at: '2017-03-15 14:55:05', updated_at: '2017-03-15 14:55:05' },
  { content: '【プログラミング学習のProgate】 Ruby on Railsのレベルが2にUPしました！', created_at: '2017-03-15 14:56:01', updated_at: '2017-03-15 14:56:01' },
  { content: '今日はひつじ仙人にGitを教えてもらったぞ！着実に力がついていっているのを感じる。そして、たまにはベイビーわんことも遊んでやらないとな。', created_at: '2017-03-15 14:56:01', updated_at: '2017-03-15 14:56:01' },
  { content: '第一回Progate Sunday Schoolに参加してきた！にんじゃわんこのステッカーもらった(^o^)', created_at: '2017-03-15 14:56:01', updated_at: '2017-03-15 14:56:01' },
  { content: 'にんじゃわんこ兄ちゃん、最近プログラミング頑張ってるなぁ。創りたいサービスがあるらしい。僕もがんばるぞー。', created_at: '2017-03-15 14:56:01', updated_at: '2017-03-15 14:56:01' },
  { content: '【プログラミング学習のProgate】 Ruby on Rails学習Ⅲを修了しました！レベルがどんどん上がっていくから楽しい！', created_at: '2017-03-15 14:56:01', updated_at: '2017-03-15 14:56:01' }
])

