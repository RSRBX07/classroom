# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all

Student.create [
    {name: "hind", course_id:9},
    {name: "ammara",course_id:8}
]

Course.destroy_all
Course.create [
    {field: "Ruby on rails", teacher:"t1"},
    {field: "Html&Css", teacher:"t2"}
]