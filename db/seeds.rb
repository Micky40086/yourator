# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


%w(測試公司1 測試公司2 測試公司3 測試公司4 測試公司5 測試公司6 測試公司7).each {|x| Admin::Company.find_or_create_by(:name => x)}