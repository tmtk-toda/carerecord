# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Label.create!(
#    title: "入浴済み"
# )
# Label.create!(
#    title: "体操参加"
# )
5.times do |n|
   Client.create!(
     name: "男性利用者sample#{n + 1}",
     sex: "男性"
   )
end

5.times do |n|
  Client.create!(
    name: "女性利用者sample#{n + 1}",
    sex: "女性"
  )
end

# 5.times do |n|
#   CareRecord.create!(
#     client: care_record.client_id,
#     content: "介護記録sample#{n + 1}",
#     content_date: "2020-06-01"
#   )
# end

# User.create!(name:  "管理者",
#              email: "admin@exam.com",
#              password:  "111111",
#              password_confirmation: "111111",
#              admin: true)

