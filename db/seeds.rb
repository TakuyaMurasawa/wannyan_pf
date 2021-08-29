# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'StarWars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





# Customer.all.each do |customer|
#  customer.animals.create!(
#    [
#      {
#        image: File.open('./app/assets/images/ゆきもも_210828.jpg'),
#        title: 'もも',
#        tipe: 'dog',
#        sex: 'female',
#        birthday: '2011-11-21',
#        prefecture: '東京都',
#        vaccine: 'already',
#        vaccine_date: '2011-12-20',
#        castrate: 'sumi',
#        profile: '中型犬',
#        other: '特になし',
#      },

#      {
#        image: File.open('./app/assets/images/cat-3431537_640.jpg'),
#        # Free-PhotosによるPixabayからの画像
#        title: 'クラ',
#        tipe: 'cat',
#        sex: 'male',
#        birthday: '2012-9-21',
#        prefecture: '東京都',
#        vaccine: 'already',
#        vaccine_date: '2012-10-20',
#        castrate: 'mada',
#        profile: '小型',
#        other: '特になし',
#      },

#      {
#        image: File.open('./app/assets/images/dog-1983156_640.jpg'),
#        # Free-PhotosによるPixabayからの画像
#        title: 'レト',
#        tipe: 'dog',
#        sex: 'male',
#        birthday: '2019-9-21',
#        prefecture: '東京都',
#        vaccine: 'notyet',
#        vaccine_date: '2020-10-20',
#        castrate: 'mada',
#        profile: '大型',
#        other: '特になし',
#      },

#      {
#        image: File.open('./app/assets/images/cat-2561796_640.jpg'),
#        # Free-PhotosによるPixabayからの画像
#        title: 'ロク',
#        tipe: 'cat',
#        sex: 'female',
#        birthday: '2019-9-21',
#        prefecture: '東京都',
#        vaccine: 'notyet',
#        vaccine_date: '2020-10-20',
#        castrate: 'sumi',
#        profile: '小型',
#        other: '特になし',
#      }
#     ]
#  )
# end

Customer.all.each do |customer|
 customer.animals.create!(
   [
     {
       image: File.open('./app/assets/images/ゆきもも_210828.jpg'),
       title: 'もも',
       tipe: 'dog',
       sex: 'female',
       birthday: '2011-11-21',
       prefecture: '東京都',
       vaccine: 'already',
       vaccine_date: '2011-12-20',
       castrate: 'sumi',
       profile: '中型犬',
       other: '特になし',
     },

     {
       image: File.open('./app/assets/images/cat-3431537_640.jpg'),
       # Free-PhotosによるPixabayからの画像
       title: 'クラ',
       tipe: 'cat',
       sex: 'male',
       birthday: '2012-9-21',
       prefecture: '東京都',
       vaccine: 'already',
       vaccine_date: '2012-10-20',
       castrate: 'mada',
       profile: '小型',
       other: '特になし',
     },

     {
       image: File.open('./app/assets/images/dog-1983156_640.jpg'),
       # Free-PhotosによるPixabayからの画像
       title: 'レト',
       tipe: 'dog',
       sex: 'male',
       birthday: '2019-9-21',
       prefecture: '東京都',
       vaccine: 'notyet',
       vaccine_date: '2020-10-20',
       castrate: 'mada',
       profile: '大型',
       other: '特になし',
     },

     {
       image: File.open('./app/assets/images/dog-1983156_640.jpg'),
       # Free-PhotosによるPixabayからの画像
       title: 'ロク',
       tipe: 'cat',
       sex: 'female',
       birthday: '2019-9-21',
       prefecture: '東京都',
       vaccine: 'notyet',
       vaccine_date: '2020-10-20',
       castrate: 'sumi',
       profile: '小型',
       other: '特になし',
     },

     {
       image: File.open('./app/assets/images/cat-4473934_640.jpg'),
       # Free-PhotosによるPixabayからの画像
       title: 'キジ',
       tipe: 'cat',
       sex: 'female',
       birthday: '2019-9-21',
       prefecture: '東京都',
       vaccine: 'unknown',
       vaccine_date: '2020-10-20',
       castrate: 'humei',
       profile: '小型',
       other: '特になし',
     }
    ]
 )
end