# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
 [
  {
   email: 'test@test.com',
   name: 'tachi',
   password: 'aaaaaa',
   introduction: '経営学科',
   image: ActiveStorage::Blob.create_and_upload!(io: 
   File.open("app/assets/images/test1.JPG"),filename: "test1.JPG")
  },{
   email: 'testtest@test.com',
   name: 'kim',
   password: 'testtest',
   introduction: '経営学科',
   image: ActiveStorage::Blob.create_and_upload!(io: 
   File.open("app/assets/images/test1.JPG"),filename: "test1.JPG")
  },{
   email: 'testtesttest@test.com',
   name: 'Test',
   password: 'testtesttest',
   introduction: "test"
  }
 ]
)

Item.create!(
 [
  {
   name: "ネックレス",
   description: "通販サイトで購入したアイテムです。",
   user_id: 1,
  },
  {
   name: "ブレスレット",
   description: "シルバー925です。",
   user_id: 2,
  },
  {
   name: "アウター",
   description: "地元の古着屋で購入しました。",
   user_id: 3,
  },
  {
   name: "リング",
   description: "16号です。",
   user_id: 1,
  },
  {
   name: "バングル",
   description: "レディース用です。",
   user_id: 1,
  },
  {
   name: "ネックレス",
   description: "友人からプレゼントでいただきました。",
   user_id: 1,
  },
  {
   name: "ネックレス",
   description: "かなり長めのチェーンになります。",
   user_id: 1,
  }
 ]
)

