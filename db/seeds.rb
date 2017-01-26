# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all

Student.create! [
    {name: "aaa", course_id:1},
    {name: "bbb", course_id:2}
]

Course.destroy_all
Course.create! [
    {field: "f1", teacher:"t1"},
    {field: "f2", teacher:"t2"}
]