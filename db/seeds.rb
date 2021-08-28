# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.create!(
   [
     {
       image: File.open('./app/assets/images/ゆきもも_210828.jpg'),
       title: 'もも',
       tipe: '1',
       sex: '2',
       birthday: '2011-11-21',
       prefecture: '東京都',
       vaccine: '1',
       vaccine_date: '2011-12-20',
       castrate: '1',
       profile: '中型犬',
       other: '特になし',
       is_active: 'true'
     }
     
    ]
)