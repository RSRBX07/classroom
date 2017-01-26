# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all

Student.create! [
    {name: "john", avatar: "image.jpg"},
    {name: "paola", avatar: "image.jpg"}, 
    {name: "thierry", avatar: "image.jpg"},
    {name:"susan", avatar: "image.jpg"}
]

Course.destroy_all
Course.create! [
    {field: "français", teacher:"Pierre"},
    {field: "Math", teacher:"Eric"},
    {field: "histoire", teacher: "paul"},
    {field: "science", teacher: "jean"}
]




