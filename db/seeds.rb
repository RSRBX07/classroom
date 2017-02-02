Course.create!([
  {field: "Maths", teacher: "Niels Bohr"},
  {field: "Histoire", teacher: "Logier"},
  {field: "Physique", teacher: "Newton"}
])

User.create!([
  {login: "Dodo"},
  {login: "Dodu"}
])

Student.create!([
  {name: "Arnold", course_id: 3, user_id: 1, picture: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png", age: 6},
  {name: "Dora l'exploratrice", user_id: 1, course_id: nil, picture: "http://letroisiemeoeuvre.com/wp-content/uploads/Picture-425.png", age: 155},
  {name: "Ernst", course_id: 3, user_id: 1, picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXqygTNYq80iedz97SvN_HcKTy1M_5oqHCvuA2t2EQtAHIuZSQ", age: 32},
  {name: "Jean", course_id: 3, user_id: 1, picture: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png", age: 53},
  {name: "Johann", course_id: nil, user_id: 1, picture: "http://fr.web.img6.acsta.net/c_300_300/pictures/15/11/16/17/48/130051.jpg", age: 35},
  {name: "Julie", course_id: 1, user_id: 2, picture: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png", age: 25},
  {name: "Max", course_id: nil, user_id: 1, picture: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png", age: 28},
  {name: "Popo", course_id: 1, user_id: 2, picture: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png", age: 18},
  {name: "Poulpinou", course_id: 2, user_id: 1, picture: "https://pbs.twimg.com/profile_images/687296500477636609/Dh1J_FbS.jpg", age: 22},
  {name: "Urag", course_id: 3, user_id: 1, picture: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png", age: 20},
  {name: "Zébulon", course_id: 1, user_id: 1, picture: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png", age: 74}
])
