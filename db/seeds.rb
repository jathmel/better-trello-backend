# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Team Members
# TeamMember.create(name: "Lawrence Hon", email: "law@email.com", password: "fintech")
# TeamMember.create(name: "Paul Ly", email: "paul@email.com", password: "japanese", is_manager: false)
# TeamMember.create(name: "Sammy Akharaz", email: "sammy@email.com", password: "trello", is_manager: false)
# TeamMember.create(name: "Steven Weiss", email: "steven@email.com", password: "turing", is_manager: false)
# TeamMember.create(name: "Ronice Ricardo", email: "malorie@email.com", password: "brucewayne", is_manager: false)
# TeamMember.create(name: "Malorie  Casimir", email: "malorie@email.com", password: "opera", is_manager: false)
# TeamMember.create(name: "Patrick Abejar", email: "Patrick@email.com", password: "selenagomez", is_manager: false)
# TeamMember.create(name: "Pablo Moreira", email: "pablo@email.com", password: "javamaster", is_manager: false)
# TeamMember.create(name: "Jee Graeff", email: "jee@email.com", password: "cats", is_manager: false)
# TeamMember.create(name: "Razibul Ahmed", email: "raz@email.com", password: "cider", is_manager: false)
# TeamMember.create(name: "Anthony Lam", email: "anthony@email.com", password: "food", is_manager: false)
# TeamMember.create(name: "Angelina Wong", email: "angelina@email.com", password: "doggo", is_manager: false)
# # Managers
# TeamMember.create(name: "Helen Liutongco", email: "helen@email.com", password: "snacks", is_manager: true )
# TeamMember.create(name: "Matt McAlister", email: "matt@email.com", password: "meatmatt", is_manager: true)

# Projects


Project.create(name: "Mod5")
Project.create(name: "Clone AirBnB")
Project.create(name: "Umbrella")
Project.create(name: "Pokemon")

Task.create(category: "Frontend", title: "Login", description: "create a login component to allow users to login to the app.", deadline: '2018-08-11', priority: "high")
Task.create(category: "Frontend", title: "SignUp", description: "create a component to allow users to register as member for the app.", deadline: '2018-08-11', priority: "high")
Task.create(category: "Frontend", title: "Project List", description: "create a component that will render all the different projects to the page.", deadline: '2018-08-11', priority: "high")
Task.create(category: "Frontend", title: "Task list", description: "create a component that will render all the different task for a specific project to the page", deadline: '2018-08-11', priority: "high")

TeamMemberProject.create(project_id: 1, task_id: 1)
TeamMemberProject.create(project_id: 2)
TeamMemberProject.create(project_id: 1, task_id: 2)
TeamMemberProject.create(project_id: 3)
TeamMemberProject.create(project_id: 1, task_id: 3)
TeamMemberProject.create(project_id: 4)
TeamMemberProject.create(project_id: 1, task_id: 4)

# Tasks
