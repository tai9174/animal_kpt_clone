
User.create!(name:"大雅",password:"kanrisya",admin: true)
User.create!(name:"あおのたけし",password:"000000",admin: false)
User.create!(name:"Taro",password:"000000",admin: false)
User.create!(name:"けんと",password:"000000",admin: false)
User.create!(name:"ネコママ",password:"000000",admin: false)
User.create!(name:"佑樹",password:"000000",admin: false)
User.create!(name:"駿介",password:"000000",admin: false)
User.create!(name:"しょーた",password:"000000",admin: false)
User.create!(name:"KEI",password:"000000",admin: false)
User.create!(name:"Mayu",password:"000000",admin: false)
User.create!(name:"rua",password:"000000",admin: false)
User.create!(name:"yuno",password:"000000",admin: false)
User.create!(name:"山田",password:"000000",admin: false)

Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nKeep\n・作業工程ごとに仮想サイトでフォルダーをコピーしたのがよかった。失敗しても一個前のフォルダーを再コピーしてチャレンジできた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・deviseのデフォルト設定を変更するのに時間がかかり、2イシュー分までしか進められていない。\n・想定外に一つの作業に時間がかかっている。",
  problem_status:rand(0..2),
  try_content:"try\n・8/19までどの程度進めるのか考え、1日に行う最低作業量を踏まえてアプリ作りを進める。",
  try_status:rand(0..2),
  favorite: true,
  user_id:"1"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10  KPT\nKeep\n・次にやることを頭の中に常にもって行動する。→時間の無駄がなくなる。\n\n〈やったこと〉\n要件定義の再提出を待ってる時間に\n手書きワイヤーフレームでissueをどう分けるのか考えた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・相談しないと難しいことをスクール時間内にしたいので、1人でできることを隙間時間にやった方がいい。\n\n作る順番やイシュー分けは、手書きのワイヤーフレームができた時点で、1人の時間でもできた。",
  problem_status:rand(0..2),
  try_content:"try\n・1人で勉強して発生した質問をメモしておく。\n・1日で最低5イシュー進める!",
  try_status:rand(0..2),
  favorite: false,
  user_id:"1"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nkeep\n・18:08に要件定義を提出した。\n\n→できる画面遷移図やワイヤーフレームの出来上がるイメージをなんとなくもってたのでスムーズだった。\n\n→手書きワイヤーフレームによる時間短縮🙆‍♂️",
  keep_status:rand(0..2),
  problem_content:"problem\n・メンタルが安定しない\n→原因、部屋に困っている\n→フェイストゥーフェイスコミュニケーションが少ない。",
  problem_status:rand(0..2),
  try_content:"try\n・夜散歩する\n・忙しい中でも、土日とかは友達に会ってみる！",
  try_status:rand(0..2),
  favorite: false,
  user_id:"1"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nKeep\n・手書きのフレームワークをもとにER図がスムーズに!\n\n→この後、画面遷移図も手書きのフレームワークをもとに書いていきます!",
  keep_status:rand(0..2),
  problem_content:"Problem\n・できそうな実装をしようとしてました。\n\nチャレンジ精神が足りなかった!\nまずはやってみる精神を受けた方が良い。",
  problem_status:rand(0..2),
  try_content:"try\n・優先順を決めつつ実装したことない機能にも挑戦する。\n\n・午前中にまでに画面遷移図の完成\n\n・18:30までに\nワイヤーフレームの完成",
  try_status:rand(0..2),
  favorite: false,
  user_id:"1"
)

Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nKeep\n・コンフリクトの直し方が分かり、少し心に余裕ができた。\n・ER図のあるテーブルが不要だと気付けた。（メンターさんと意見が一致した）",
  keep_status:rand(0..2),
  problem_content:"8/12 KPT\nProblem\n・卒業課題の進みが遅い。\n・コミットメッセージのだれに向けて、どのような書き方をすればよいか分からない。",
  try_content:"8/13 KPT\nTry\n・コミット一覧を見るのはいつ、だれが、なぜ見るかを把握する。（コミットメッセージの書き方の参考とするため）\n・TOP画面を生成する。",
  try_status:rand(0..2),
  favorite: true,
  user_id:"2"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10 KPT\nKeep\n・SGさんに質問してプロジェクト全体の流れや運用方法を把握することができた。\n・issue管理でバックエンドタスク、フロントエンドタスクだけではなくバックエンド、フロントエンドをつなげる中間タスクが必要だと実感できた。",
  keep_status:rand(0..2),
  problem_content:"8/10 KPT\nProblem\n・ER図でテーブル不足があることが判明…\n・modelのカラムを日本語化できる仕組みがわからない😭",
  problem_status:rand(0..2),
  try_content:"8/11 KPT\nTry\n・modelのカラムを日本語化できる仕組みを把握する。\n・githubのマイルストーンだけでは、まだ優先順位を明確にできていないため、良い管理方法を考えてみる。（昨日教えて頂いたgithubプロジェクトの使用も考慮する）",
  try_status:rand(0..2),
  favorite: false,
  user_id:"2"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nKeep\n・外部キーとアソシエーションの違いを理解できた。\n・「has_many」・「has_one、belongs_to」というグループではなく、「has_many、has_one」・「belongs_to」というグループ分けになっていることを理解できた。\n・ダミーアプリにransackを実装できた。",
  keep_status:rand(0..2),
  problem_content:"8/9 KPT\nProgram\n・カタログ設計についてアドバイスが難しい\n・zenhubというgithubの拡張機能があり、それでガントチャート機能を使えるようになったが、まだ既存機能とのコネクションの理解が不明。",
  problem_status:rand(0..2),
  try_content:"8/10 KPT\nTry\n・フロントエンド部のコンポーネント類を生成するところまで実装する。\n・バックエンド開発を50%を達成する",
  try_status:rand(0..2),
  favorite: false,
  user_id:"2"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nKeep\n・gem deviseをダミーアプリで試すことができた。\n・本番アプリでログイン機能を8割ほど実装することができた。\n・commit メッセージに　emojiを使うことができた。",
  keep_status:rand(0..2),
  problem_content:"8/8 KPT\nKeep\n・gem deviseをダミーアプリで試すことができた。\n・本番アプリでログイン機能を8割ほど実装することができた。\n・commit メッセージに　emojiを使うことができた。",
  problem_status:rand(0..2),
  try_content:"8/9 KPT\nTry\n・ransackをダミーアプリで実装する。\n・他gemを選定する。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"2"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nKeep\n・グループワークのお陰でコンフリクト対する恐怖心が軽減された。\n※万葉課題の時にコンフリクトをしていたので。",
  keep_status:rand(0..2),
  problem_content:"Problem\n・テンプレートが読み込まれないエラーの原因が、ファイル名の前に半角空白をつけていた。\n・色んな記事を参考に進めていて、しっかり理解をしながらやっていないため色んな記事が混ざ理、どこで何をしてるか分からなくなった。",
  try_content:"・実装を明日までに終わらせる。\n・集中力が切れたら、JavaScriptのやってみたい機能は決まってるので、どこにどうやって書いていくのかなどを調べながら時間を無駄にせず進める。",
  try_status:rand(0..2),
  favorite: true,
  user_id:"3"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10 KPT\n Keep\n・ソニックガーデンさんの技術相談において特に勉強になったのが、1番最初の設計の考え方、管理についてどこまで細分化するや、具体的な現場での仕事の進め方、タスク管理(GitHub Project)など、今後のアプリ制作において（フロントエンドでも）とても重要なところを知ることができた。",
  keep_status:rand(0..2),
  problem_content:"Problem\n・タスクの細分化が足りないと気づく。JavaScriptややってみたいことがてんこ盛りだが、いったんここで気づいた細かいタスクを洗い出す必要がある。",
  problem_status:rand(0..2),
  try_content:"Try\n・一つの実装が終わったら他がエラーが出ているためコツコツ解決していく。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"3"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nKeep\n・issuesのToDoが大まかだったが、細分化したことにより計画しやすくなった。",
  keep_status:rand(0..2),
  problem_content:"Problem\n・昨日の寝不足で強い眠気に襲われることが多く、また部屋の環境（室内温度）も扇風機など使用しても暑かった。集中できて作業できた時間が少しだけだった。",
  problem_status:rand(0..2),
  try_content:"Try\n・体調も整ったので、今日は昨日の分も含め進める。今日も暑いようなので着ているものを脱ぐなり工夫して日中を過ごす。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"3"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nKeep\n・どうすればいいか手が止まっていた箇所をメンターさんのアドバイスで進むことができた。",
  keep_status:rand(0..2),
  problem_content:"Problem\n・テスト環境で実装して簡単にできたGem（シンプルカレンダーのみ）がrails_adminのローケルファイルが原因？でエラーが出る。Gem同士のそういったエラーが発生すると考えると頭が痛い。",
  problem_status:rand(0..2),
  try_content:"Try\n・deviceの管理者用とユーザー用でしっかり下調べをしてから実装を試みる。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"3"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nkeep\n・Issueの細分化ができた。\n・コンフリクトが起きた際の解消方法を知ることができた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・ペースが遅いので計画を立てる。",
  try_content:"try\n・基盤となるページを作成し、必要なgemを導入する。",
  try_status:rand(0..2),
  favorite: true,
  user_id:"4"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10  KPT\nkeep\n・GitHubのProject機能について知ることができた。\n・実装手順を整理することができた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・Issueを作成するのに時間をかけすぎてしまった。",
  problem_status:rand(0..2),
  try_content:"try\n・実装しながら足りないIssueを付け足す。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"4"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nkeep\n・要件定義を一旦提出できた。\n・deviseについて調べることができた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・他に使いたいgemについて調べられていない。",
  problem_status:rand(0..2),
  try_content:"try\n・issueを使って実装の段取りを整理する。\n・要件定義を修正する。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"4"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nkeep\n・tryにあげていた画面遷移図をとりあえず完成させられた。\n・http://draw.ioと分かり合えてきた気がする。",
  keep_status:rand(0..2),
  problem_content:"problem\n・ワイヤーフレームに時間をかけすぎた。",
  problem_status:rand(0..2),
  try_content:"try\n・要件定義を一旦提出する。\n・使いたいgemが増えたので調べてみる。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"4"
)

Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nkeep\n・テーブル定義について山田さんから考え方をレクチャーしてもらったため、今日中に終わることができた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・ER図を着手中、テーブルが足りないことに気づいた。",
  problem_status:rand(0..2),
  try_content:"try\n・issuesを立てて、要件漏れや実装漏れがないようにする。\n・実装したいgemのテストをする。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"5"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"keep\n・ワイヤーフレームを書いて行くことで頭の中の整理ができた。\n・SGさんの技術相談を聞くことで、テーブル定義について理解が進んだ",
  keep_status:rand(0..2),
  problem_content:"problem\n・要件定義まだかかりそう。時間を確保したい。",
  problem_status:rand(0..2),
  try_content:"try\n・要件定義の一つづつに時間がかかってしまう。\n過去の皆さんのテーブル定義などを参考にして、今日中に提出したい。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"5"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nkeep\n・要件定義に盛り込む内容が同期の皆様のおかげで固まってきた。実装したい問題に対する解決策を精査できた。\n・メンターさんに相談することで、実装にかかる時間などを何となく図る事ができたことで、データをスクレーピングで持ってくることは断念した。",
  keep_status:rand(0..2),
  problem_content:"problem\n・情報を収集した結果やりたい事が多すぎて、頭の中で纏まらなくなってしまった。卒業制作では期間内に課題内容を実装できるように実装範囲を越えるところは諦めて卒業後に行うようにする。",
  problem_status:rand(0..2),
  try_content:"tr\n・もう一度要件を確認して実装内容を決める\n・本日中に要件定義の目処をつける",
  try_status:rand(0..2),
  favorite: false,
  user_id:"5"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nkeep\n・卒業生のアプリを見て想像が広がる。",
  keep_status:rand(0..2),
  problem_content:"problem\n・カタログ設計の商品概要がまとまらず、自分の国語力とまとめる力の無さに泣。",
  try_content:"try\n・問題と解決案をもっと掘り下げてまとめる。\n・アプリ作成においてリサーチしたこと、ママ友意見をまとめる。",
  try_status:rand(0..2),
  favorite: true,
  user_id:"5"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nKeep\nコンフリクトの解消手順について、理解を深めることができた。\n\n技術相談の内容をテーブル設計・ER図に反映させることができた。\n\n本番環境でletter_openerを適用することができた。",
  keep_status:rand(0..2),
  problem_content:"Problem\n調べても解消できないことが多い\ngem ranked-modelが機能しない\n引越日まで残り何日か算出する方法も分からない…",
  try_content:"Try\n並べ替え後の状態を維持できる方法を調べる\n(ページ遷移や画面更新後に、並べ替え前の状態に戻らないようにする)",
  try_status:rand(0..2),
  favorite: true,
  user_id:"6"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10 KPT\nKeep\nVSCodeの拡張機能でコミットメッセージのテンプレートの保管・呼び出しの設定ができた。\n\n技術相談を通して、より管理しやすい設計が実現できそうだとわかった。質問してよかった。",
  keep_status:rand(0..2),
  problem_content:"Problem\nテーブルやERの再設計が必要\nできるのか・・・",
  problem_status:rand(0..2),
  try_content:"Try\nテーブルやER図の内容について、質問にいく\n\n質問待ちの時間は、下記の内容を調べる\n・期日まで残り何日かを算出する方法\n・本番環境でletter_openerを適用する方法",
  try_status:rand(0..2),
  favorite: false,
  user_id:"6"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\n\nKeep\nissueの作成と計画を立てることができた。\nこれから空き時間に調べる内容を整理できた。",
  keep_status:rand(0..2),
  problem_content:"",
  problem_status:rand(0..2),
  try_content:"Try\nログイン後にユーザーの詳細ページへの遷移-可\nアプリに実装する\n\nユーザーのshowを作成\nデフォルトだとroot先に遷移するため、遷移先の変更を行う\napp/controllers/application_controller.rb\ndef after_sign_in_path_for(resource)\nリダイレクト先のパス\nend",
  try_status:rand(0..2),
  favorite: false,
  user_id:"6"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nKeep\nhttp://draw.ioを少し克服\nブロックから矢印を出せることが分かった。",
  keep_status:rand(0..2),
  problem_content:"Problem\n作成に時間がかかる\nスケジュールを組み直す",
  problem_status:rand(0..2),
  try_content:"Try\n\nイシューを活用して、要件定義した内容を整理。1日でどこまで終わらせるかを決めて進める。1タスクにかかる時間を見積もる\n\n平日は優先度"高"かつ実装のイメージができていないところから重点的に進める\n\n質問待ちの時間や休日は、新しい内容(gem関係)の基礎をおさえる",
  try_status:rand(0..2),
  favorite: false,
  user_id:"6"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12KPT\nkeep\nER図、ワイヤーフレームを同時に進めることで要件定義の全体像が見えてきた、大幅に進んだ",
  keep_status:rand(0..2),
  problem_content:"Problem\n細部の要件に翻弄されている感がある",
  try_content:"Try\n大枠の機能を完成させることに集中する",
  try_status:rand(0..2),
  favorite: true,
  user_id:"7"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10 KPT \nKeep\n休憩を挟みつつも終礼まで生存するという目標達成",
  keep_status:rand(0..2),
  problem_content:"Problem\nペースが激遅だったため体調と相談しつつ徐々にペースをあげていく",
  problem_status:rand(0..2),
  try_content:"Try\nこまめに休憩と水分補給、体調とメンタル優先で少しずつ作業時間の質を上げていく",
  try_status:rand(0..2),
  favorite: false,
  user_id:"7"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"休み",
  keep_status:rand(0..2),
  problem_content:"休み",
  problem_status:rand(0..2),
  try_content:"休み",
  try_status:rand(0..2),
  favorite: false,
  user_id:"7"
)

Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"休み",
  keep_status:rand(0..2),
  problem_content:"休み",
  problem_status:rand(0..2),
  try_content:"休み",
  try_status:rand(0..2),
  favorite: false,
  user_id:"7"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nkeep\n投稿記事の下書き保存機能を送信ボタンを2つ用意することでパラメータの送り方に苦労したが、コントローラーで分岐し下書きと投稿を分けることができた。\nコントローラーのコード量が多くなることについてメンターさんに相談できた。",
  keep_status:rand(0..2),
  problem_content:"problem\nBlumaについて調べることができなかった。原因は実装を急ぐことに焦りを感じているためまずは機能の実装を優先してしまったことにある。",
  try_content:"try\nGem wickedを使ってウィザード形式の入力フォームを実装しようとしていたがdeviseとの兼ね合いで難しいためgemを使わずに実装を試してみる。",
  try_status:rand(0..2),
  favorite: true,
  user_id:"8"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10 KPT\nkeep\nいいね機能の実装をAjaxを使って実装を目指しているがハートマークをつけて外すことはできたがまだ挙動がおかしいため引き続きしっかり実装できるようにする",
  keep_status:rand(0..2),
  problem_content:"problem\nコメント以外の機能をAjaxを使って実装しようとしたがうまく実装を仕上げることがで着なかった。Javascriptやコードの動きをもっと理解していくことが必要",
  problem_status:rand(0..2),
  try_content:"try\nフォロー・フォロワー機能の実装にもAjaxを使用して実装を予定しているので再度コードを理解しながら実装を心がける。\nそろそろbulmaについても学びフロント側の整え方も考えておく",
  try_status:rand(0..2),
  favorite: false,
  user_id:"8"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nkeep\n誕生日のデータから年齢を計算し、実年齢ではなく『10代、20代』と表示させることができた。更に、modelsにメソッドを定義し、viewでcontrollerでメソッドの使用ができる実装ができた。",
  keep_status:rand(0..2),
  problem_content:"problem\nインスタンスメソッドやクラスメソッドの理解が深くなかったためkeepで実装した内容を調べるのにとても時間がかかった。\n基礎的な理解が不足している",
  problem_status:rand(0..2),
  try_content:"try\nお気に入り数の表示などDIVERでは書かれていない内容も実装していきたいため上手に検索して実装を進めていく",
  try_status:rand(0..2),
  favorite: false,
  user_id:"8"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nKeep\n適宜休憩をとり進めることができた。\n体調悪化時に考えたissueに不足があり思いつく限り追加した。Issueが細かくなったが、1機能ずつ確実に実装できそう。\nIssueにラベルを取り入れた。\ndeviseでのユーザーsign_up、log_in機能の実装完",
  keep_status:rand(0..2),
  problem_content:"problem\nissueがうまく整理できず、思いつくままに記載したため、実装の順番などは無視したものになってしまった。\n完成までのプロセスの詳細が想像できない",
  problem_status:rand(0..2),
  try_content:"try\n実装したい機能がたくさんあるのでできるところから着実に実装を進めていく。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"8"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12 KPT\nKeep\n・ワークを通して、コンフリクトの解消の仕方の理解が深まりました。",
  keep_status:rand(0..2),
  problem_content:"Problem\n・コメント機能をAjaxで実装したが、リロードしないと表示されない不具合",
  try_content:"Try\n・Ajaxの理解ができていないので、理解を深める。\n・フォロー機能を実装する",
  try_status:rand(0..2),
  favorite: true,
  user_id:"9"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10 KPT\nKeep\n・SGの技術相談で自分のアプリに取り入れられそうな知識や技術が聞けました\n・GItHubのProjectが便利\n・テーブル名にProcessを使おうとしたがrails の予約語で使えないことがわかりました",
  keep_status:rand(0..2),
  problem_content:"Problem\nIssuesの細分化に手こずっている",
  problem_status:rand(0..2),
  try_content:"Try\n・issueを細分化することが難しいので、まずはissueを立てる。\n作業をしながら少しずつ細分化できるようにする。\n\n・Ajaxを使用してコメント機能を実装する",
  try_status:rand(0..2),
  favorite: false,
  user_id:"9"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nKeep\n・Gem のcancancanとrails_adminを試すことができ、動作確認もすることができた\n・要件定義を合格",
  keep_status:rand(0..2),
  problem_content:"Problem\n・Ajaxの機能を試してみたが、うまく実装できていない",
  problem_status:rand(0..2),
  try_content:"Try\n・Ajaxのエラーは無事解決し、実装できた\n実装しようと思っている機能については一通り試すことができた\n・issueを立てて、優先順位を確認しながら開発を進めていく",
  try_status:rand(0..2),
  favorite: false,
  user_id:"9"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nKeep\n・使用するGemを試すことができた\n→今日試してみたのは、device\n・今日中に要件定義を提出はなんとかできそう",
  keep_status:rand(0..2),
  problem_content:"Problem\n・まだ、使用するGemで試せていないものがある。\n→ransack, rails_admin",
  problem_status:rand(0..2),
  try_content:"Try\n・要件定義の修正をする\n・隙間時間には、実装するGemや機能についての記事を読んで理解を深める",
  try_status:rand(0..2),
  favorite: false,
  user_id:"9"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12 87日目 KPT 9時間 計664時間\n\n○進捗\n卒業課題\n\n■keep\n・アプリの肝である「ランダムにニックネームを付ける機能」の実装に成功!!\n・SGさんから頂いたアドバイスを元に、きちんと自分の言葉(コード)で書けた。",
  keep_status:rand(0..2),
  problem_content:"■problem\n・スケジュールが押しているので急ぐ。\n・チャット機能に使う新しい技術についての理解がまだ足りない。",
  try_content:"■try\n明日からチャットに着手するので、今日しっかり調べる",
  try_status:rand(0..2),
  favorite: true,
  user_id:"10"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/10 86日目 KPT 7時間 計655時間\n\n○進捗\n卒業課題\nSGさん技術相談\n\n■keep(技術相談について)\n・ニックネームをつけるためのメソッド及びテーブル定義の改善点が明確になった。\n\n・いいコードを書くため以下のことを新たに意識\n→命名は長くてもわかりやすくする",
  keep_status:rand(0..2),
  problem_content:"■problem\n・gem導入前の調査が足りない。\nrailsのスタイルガイドで推奨されていたgem 'friendly_id'を導入したが、動きが遅くなっている気がした。調べてみたら速度が1/3になる事もある、と書かれている記事が。少し時間が勿体なかったが勉強にはなった。",
  problem_status:rand(0..2),
  try_content:"■try\n・新しいgemや技術は、簡単そうでも作業前にちゃんと調べて導入するか否か判断する。\n・SGさんのアドバイスをもとにニックネーム付与のロジックを組む。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"10"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 85日目 KPT 8時間 計648時間\n\n○進捗\n卒業課題\n\n■keep\n・目標としていたところまで作業できた\n・ファシリ、上手く話せている気がする\n・エラーへの対応力がまた一段と上がっている",
  keep_status:rand(0..2),
  problem_content:"■problem\n同期生が卒業課題のアイディア出しをしている中で、なかなかいい解決策を纏めきれなかった…\n形にしようとすると様々な問題が出てきた。\n・既存のサイトが溢れかえっている\n・解決したい課題は明確だが、それに対する解決策が幅広い＆壮大過ぎて焦点を定めきれない\n・実現したい事と技術の壁",
  problem_status:rand(0..2),
  try_content:"■try\n・昨日のproblemに関して。\n→いい助言が出来ず悔いは残るが、方向性が見えてきたようなので、他の部分でサポート出来るよう心構えをしておく。\n・上手く話せている事に関して。\n→以前までと何が違っているのか書き出す。\n→そのために、話している時にどう思考しているか気づくよう心掛ける。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"10"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 84日目 KPT 25時間 計640時間(土日分含む)\n\n○進捗\ndevise test app\n卒業課題\n\n■keep\n・GitHubのissue内サブ機能が、得意なタスクバラしをアップグレードしてくれる頼もしい存在になりそうだと判明。\n・自作のemoji prefixチートシートを5月期生に共有できた",
  keep_status:rand(0..2),
  problem_content:"■problem\n・カレントディレクトリを間違えて「?」となるミスをまたやってしまった",
  problem_status:rand(0..2),
  try_content:"■try\nターミナルの設定を見直す",
  try_status:rand(0..2),
  favorite: false,
  user_id:"10"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/13 KPT\nkeep\n・今日のワークでコンフリクトの解消の仕方が分かってよかった。",
  keep_status:rand(0..2),
  problem_content:"problem\n・テーブル設計に時間をかかりすぎた。\n・今日のワークでターミナルで色々実行する際にまだコマンドを覚えれてないなっていうのと英語のスペルが壊滅的だと感じた。",
  try_content:"try\n・1対多なのか多対多なのかをいしきしながら必要なテーブルをつくる。",
  try_status:rand(0..2),
  favorite: true,
  user_id:"11"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"8/11 KPT\nkeep\n・tryでゆってた今日中にアプリ内容をきめてカタログ設計を完成させる事ができた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・何のテーブルが必要か書き出した時に何と何の中間テーブルが必要なのかなど、途中分からなくなった。",
  problem_status:rand(0..2),
  try_content:"try\n・今日中にはどういうアプリの内容にするかしっかり決める。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"11"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9 KPT\nkeep\n・同期の方に相談する事で大規模な事だと気づき一応絞り込むことができた。\n・アプリにどういう機能があれば助かるのかを実際にその関係者の方々に電話をかけて意見を聞くことができた。",
  keep_status:rand(0..2),
  problem_content:"problem\n・この調子でやっていると要件定義に時間をかけすぎてしまう、、。",
  problem_status:rand(0..2),
  try_content:"try\n・頭にあるものをとりあえず紙に全部書いてみる。→そこからまとめて行く。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"11"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"8/8 KPT\nkeep\n・今日朝言ってたtryで同期の方の意見がきけた。\n・gemコードリーディングでgemのライブラリがどのように動いているのかが分かった。",
  keep_status:rand(0..2),
  problem_content:"problem\n・目標としていた要件定義まで辿り着けなかった。",
  problem_status:rand(0..2),
  try_content:"try\n・今日で要件定義にはいるのを目標にする。\n・アイディア思い浮かばなかったら同期の方に聞いてみる。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"11"
)
Kpt.create!(
  date:Date.today,
  keep_content:"□8/12 77日目 KPT\n\nkeep\n・gemの検証すべき機能に気づけた\n→検証によってdeviseの理解が深まった\n\n・issueを立てる際に機能を細分化できた\n→要件定義に変更したい点が出てきた\n→早めにメンターさんに相談と依頼をする",
  keep_status:rand(0..2),
  problem_content:"problem\n\ni. お昼まで集中のスイッチが入らなかった\n→緊張感が足りない、、、",
  try_content:"try\ni. 同期生の課題共有やGitHubを見てモチベーションを高める",
  try_status:rand(0..2),
  favorite: true,
  user_id:"12"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"□8/10 76日目 KPT \n\nkeep\n・Gemの検証で出たエラーを自己解決できた\n→MVCをイメージするとすぐに分かった\n→problemもありました…",
  keep_status:rand(0..2),
  problem_content:"problem\n\ni. また躓く必要のないところに時間を使ってしまった\n→参考記事の下に実装の続きがあった\nii. gemの検証は成功できたが、説明できるほど理解は進んでいない",
  problem_status:rand(0..2),
  try_content:"try\n\ni. 参考記事はざっくりでもいいので下まで一読\nii. gemは、本番実装中に今何の作業をしているのか考えながらやる",
  try_status:rand(0..2),
  favorite: false,
  user_id:"12"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"□8/9 75日目 KPT \n\nkeep\n・要件定義課題を提出できた（1回目）\n・ページ数が多かった割にスムーズにワイヤーフレームを作れた\n・同期生と話したことで次の課題のヒントが得られた",
  keep_status:rand(0..2),
  problem_content:"problem\n\ni. メンターさんからいただいたスケジュールから遅れている\n→自分の立て直したスケジュール通り\n→もう一度、スケジュールを見直す？",
  problem_status:rand(0..2),
  try_content:"ワイヤーフレームに時間かけ過ぎはナンセンスだけど\nめちゃくちゃ楽しい可愛いモチベーションが復活する",
  try_status:rand(0..2),
  favorite: false,
  user_id:"12"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"□8/8 74日目 KPT \n\nkeep\n・自分で拡張機能を調べて効率よく要件定義を進められた\n・自分が作ったものをアウトプットできた",
  keep_status:rand(0..2),
  problem_content:"problem\n\ni. カリキュラム、要件を再確認していない\n→今のところ大きな問題はない",
  problem_status:rand(0..2),
  try_content:"try\n\ni. 課題の提出中などに確認して\n時間を有効活用するよう心掛ける",
  try_status:rand(0..2),
  favorite: false,
  user_id:"12"
)
Kpt.create!(
  date:Date.today,
  keep_content:"8/12(金) KPT\nKeep\n-ワークでコンフリクトの解消方法の理解が深まった。\n（VSCodeの機能で簡単にどっちの変更を採用するか選択できることもわかった）\n-deviseの実装について、大体理解できた。",
  keep_status:rand(0..2),
  problem_content:"Problem\n-deviseの勉強に思ったより時間がかかってしまった。",
  try_content:"Try\n-触れたことのない技術の習得時間は予定の3倍くらいかかるつもりで、スケジュールを見直す。\n（残り必須のgemとしてchartkickがあるので、そこの実装を余裕をもってできるように制作を進める）",
  try_status:rand(0..2),
  favorite: true,
  user_id:"13"
)
Kpt.create!(
  date:(Time.now.-2.day),
  keep_content:"Keep\n-SGさんの技術相談より\n効果的なhas_many、has_manyのときのデータ取得方法がわかった。\n-RSpecで失敗したテストだけやり直す方法を実践できた。",
  keep_status:rand(0..2),
  problem_content:"Problem\n-Rubyの基本メソッドへの理解が甘く、卒業制作まで着手できず。。。\n（issue作成までは完了）",
  problem_status:rand(0..2),
  try_content:"Try\n-なにはともあれ、卒業制作開始\n（優先度【高】の実装は8/23までを目標に）\n（実装を進めていく中で出てきた課題はどんどんissueに足していく）\n\n-ワークで、コンフリクトへの苦手を克服する",
  try_status:rand(0..2),
  favorite: false,
  user_id:"13"
)
Kpt.create!(
  date:(Time.now.-3.day),
  keep_content:"8/9(火) KPT\nKeep\n-金子さん、丸岡さんとの要件定義のディスカッションを通じて、\ngooglemap やスクレイピングのgemなどに少し詳しくなれた",
  keep_status:rand(0..2),
  problem_content:"Problem\n-卒業制作着手開始できず。\n（もろもろ周辺情報集めで終了）",
  problem_status:rand(0..2),
  try_content:"Try\n-卒業制作着手開始\n(milestoneたてつつ、issue立てしてから）\n(issueは機能単位、milestoneは優先度別）",
  try_status:rand(0..2),
  favorite: false,
  user_id:"13"
)
Kpt.create!(
  date:(Time.now.-4.day),
  keep_content:"Keep\n-画面遷移図作成を通じて、http://draw.ioと仲良くなれた&カタログ設計の見直しになった\n-絵文字コミットメッセージが思ってたより目立つ＆可愛いとわかったので、さっそく卒業制作を「🎉initial commit」でpushしてみた。",
  keep_status:rand(0..2),
  problem_content:"Problem\n-自分が「設計」が非常に苦手（嫌い？）だと言うことがわかった。\n（マネジメント向いてなさそう）\n（今後、設計関連の知識を習得して、苦手意識のハードルを下げる必要がある）\n\n本日の学習結果\n-画面遷移図完成、ワイヤーフレーム途中まで",
  problem_status:rand(0..2),
  try_content:"Try\n-自分はワイヤーフレームを先に書いた方が、画面遷移図を描きやすいと感じたので、次回の制作の際はそうする。",
  try_status:rand(0..2),
  favorite: false,
  user_id:"13"
)



User.all.each do |user|
  user.teams.create!(
    team_name:"team(#{user.name})"
  )
end
JoinTeam.create!(user_id: "1", team_id:"1")
JoinTeam.create!(user_id: "2", team_id:"1")
JoinTeam.create!(user_id: "3", team_id:"1")
JoinTeam.create!(user_id: "4", team_id:"1")
JoinTeam.create!(user_id: "5", team_id:"1")
