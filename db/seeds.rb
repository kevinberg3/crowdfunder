User.destroy_all
Project.destroy_all


user = User.create!(first_name: "James", last_name: "Cook", email: "iamsocool@me.com", password: "funboy")

project1 = user.projects.create!(title: "Manhattan Project", teaser: "Top secret", description: "It is a thing to do other things", goal: 150000)

project2 = user.projects.create!(title: "Airport Singles", teaser: "Singles that like to travel?", description: "Airport singles!", goal: 3333)

project3 = user.projects.create!(title: "Poor guy need food", teaser: "I'm so hungry", description: "I need to buy some groceries", goal: 35)
