# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Course.create [
    {field: "Maths", teacher:"Bat"},
    {field: "Français", teacher:"Brancé"},
    {field: "Histoire", teacher:"Bégéo"}
]

Student.destroy_all
Student.create [
    {name: "Bob", picture:"http://i.dailymail.co.uk/i/pix/2016/04/28/18/1B9B524500000578-3564213-image-a-9_1461865889745.jpg"},
    {name: "Babette", picture:"http://www.insideedition.com/images/stories/1602/14594.jpg"},
    {name: "Boris", picture:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hausziege_04.jpg/220px-Hausziege_04.jpg"},
    {name: "Bérénice", picture:"http://www.naturallivingideas.com/wp-content/uploads/2015/08/baby-goat.jpg"},
    {name: "Bubu", picture:"http://cdn.shopify.com/s/files/1/1127/8008/products/lol_copy_grande.png?v=1473867490"}
]
