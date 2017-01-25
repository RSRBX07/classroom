# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all

Student.create! [
    {name: "amara", course_id: 9},
    {name: "hind", course_id: 10},
    {name: "Wissam" , course_id: 9},   
    {name: "El Khalil", course_id: 10}
]

Course.destroy_all
Course.create! [
    {field: "Gestion Projet", teacher:"Arnaud"},
    {field: "Ruby", teacher:"Pierre"}
]