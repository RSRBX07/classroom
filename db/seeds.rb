# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all

Student.create [
    {name: "Donald Trump", src_img: "avatar2" },
    {name: "Le roi des Belges", src_img: "avatar4"},
    {name: "Not 42", src_img: "avatar3"},
    {name: "Pénélope Fillon", src_img: "avatar1"}
]

Course.destroy_all
Course.create! [
    {field: "Math", teacher:"M. Einstein", remain_days:14},
    {field: "Anglais", teacher:"Mme Simpson", remain_days:12}
]