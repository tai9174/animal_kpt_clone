
User.create!(name:"管理者",password:"kanrisya",admin:"ture")
10.times do |t|
  User.create!(name:"ユーザー#{t + 1}",password:"yuuzaa",admin: false)
end

User.all.each do |user|
  user.kpts.create!(
    date:Date.today,
    keep_content:"keep_content(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content(#{user.name})",
    try_status:rand(0..2),
    favorite: true
  )
  user.kpts.create!(
    date:(Time.now.-1.day),
    keep_content:"keep_content1(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content1(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content1(#{user.name})",
    try_status:rand(0..2),
    favorite: ture
  )
  user.kpts.create!(
    date:(Time.now.-2.day),
    keep_content:"keep_content2(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content2(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content2(#{user.name})",
    try_status:rand(0..2),
    favorite: false
  )
  user.kpts.create!(
    date:(Time.now.-3.day),
    keep_content:"keep_content3(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content3(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content3(#{user.name})",
    try_status:rand(0..2),
    favorite: false
  )
  user.kpts.create!(
    date:(Time.now.-4.day),
    keep_content:"keep_content4(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content4(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content4(#{user.name})",
    try_status:rand(0..2),
    favorite: false
  )
  user.kpts.create!(
    date:(Time.now.-5.day),
    keep_content:"keep_content5(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content5(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content5(#{user.name})",
    try_status:rand(0..2),
    favorite: false
  )
  user.kpts.create!(
    date:(Time.now.-6.day),
    keep_content:"keep_content6(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content6(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content6(#{user.name})",
    try_status:rand(0..2),
    favorite: false
  )
  user.kpts.create!(
    date:(Time.now.-7.day),
    keep_content:"keep_content7(#{user.name})",
    keep_status:rand(0..2),
    problem_content:"problem_content7(#{user.name})",
    problem_status:rand(0..2),
    try_content:"try_content7(#{user.name})",
    try_status:rand(0..2),
    favorite: false
  )
end

User.all.each do |user|
  user.teams.create!(
  name:"team(#{user.name})"
  )
end


10.times do |t|
  Join_team.create!(team_id:1,user_id:(t + 1))
end