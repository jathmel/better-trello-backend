# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Team Members
TeamMember.create(name: "Lawrence Hon", email: "law@email.com", password: "fintech")
TeamMember.create(name: "Paul Ly", email: "paul@email.com", password: "japanese", is_manager: false)
TeamMember.create(name: "Sammy Akharaz", email: "sammy@email.com", password: "trello", is_manager: false)
TeamMember.create(name: "Steven Weiss", email: "steven@email.com", password: "turing", is_manager: false)
TeamMember.create(name: "Ronice Ricardo", email: "malorie@email.com", password: "brucewayne", is_manager: false)
TeamMember.create(name: "Malorie  Casimir", email: "malorie@email.com", password: "opera", is_manager: false)
TeamMember.create(name: "Patrick Abejar", email: "Patrick@email.com", password: "selenagomez", is_manager: false)
TeamMember.create(name: "Pablo Moreira", email: "pablo@email.com", password: "javamaster", is_manager: false)
TeamMember.create(name: "Jee Graeff", email: "jee@email.com", password: "cats", is_manager: false)
TeamMember.create(name: "Razibul Ahmed", email: "raz@email.com", password: "cider", is_manager: false)
TeamMember.create(name: "Anthony Lam", email: "anthony@email.com", password: "food", is_manager: false)
TeamMember.create(name: "Angelina Wong", email: "angelina@email.com", password: "doggo", is_manager: false)
# Managers
TeamMember.create(name: "Helen Liutongco", email: "helen@email.com", password: "snacks", is_manager: true )
TeamMember.create(name: "Matt McAlister", email: "matt@email.com", password: "meatmatt", is_manager: true)

# Projects
Project.create(name: "Mod5")
Project.create(name: "Better Trello")
Project.create(name: "Umbrella")
Project.create(name: "Pokemon")

# Tasks
Task.create(title: "task1", description: "testing1", priority: 3, team_member_id: 13, project_id: 1)
Task.create(title: "task1", description: "testing1", priority: 3, team_member_id: 14, project_id: 2)
Task.create(title: "task1", description: "testing1", priority: 3, team_member_id: 13, project_id: 3)
Task.create(title: "task1", description: "testing1", priority: 3, team_member_id: 14, project_id: 4)
Task.create(title: "task2", description: "testing2", priority: 3, team_member_id: 1, project_id: 1)
Task.create(title: "task2", description: "testing2", priority: 3, team_member_id: 2, project_id: 2)
Task.create(title: "task2", description: "testing2", priority: 3, team_member_id: 3, project_id: 3)
Task.create(title: "task2", description: "testing2", priority: 3, team_member_id: 4, project_id: 4)
Task.create(title: "task3", description: "testing3", priority: 3, team_member_id: 5, project_id: 1)
Task.create(title: "task3", description: "testing3", priority: 3, team_member_id: 6, project_id: 2)
Task.create(title: "task3", description: "testing3", priority: 3, team_member_id: 7, project_id: 3)
Task.create(title: "task3", description: "testing3", priority: 3, team_member_id: 8, project_id: 4)
Task.create(title: "task4", description: "testing4", priority: 3, team_member_id: 9, project_id: 1)
Task.create(title: "task4", description: "testing4", priority: 3, team_member_id: 10, project_id: 2)
Task.create(title: "task4", description: "testing4", priority: 3, team_member_id: 11, project_id: 3)
Task.create(title: "task4", description: "testing4", priority: 3, team_member_id: 12, project_id: 4)
Task.create(title: "task5", description: "testing5", priority: 3, team_member_id: 1, project_id: 1)
Task.create(title: "task5", description: "testing5", priority: 3, team_member_id: 6, project_id: 2)
Task.create(title: "task5", description: "testing5", priority: 3, team_member_id: 5, project_id: 3)
Task.create(title: "task5", description: "testing5", priority: 3, team_member_id: 7, project_id: 4)
