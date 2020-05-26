# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users table
first_name
last_name
kana_first_name
kana_last_name
email
sex

#categorys
(people,culture,other)


# hamburgers
hamburgers_name
(mypicks,source,setting,about,logout)




# admin_users
AdminUser.create!(
    email: "admin@example.com",
    password: 'password',
    password_confirmation: 'password'
  )
  