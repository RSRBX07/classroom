# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all

Student.create [
    {name: "Pablo", course_id: 5},
    {name: "Leonard", course_id: 6 },
    {name: "Jack", course_id: 6 },
    {name: "Nicolas", course_id: 6 },
    {name: "Marck", course_id: 5 },
    {name: "Lucien", course_id: 5 }
]

Course.destroy_all
Course.create [
    {field: "Arts", teacher:"Toto"},
    {field: "Sciences", teacher:"Tata"}
]