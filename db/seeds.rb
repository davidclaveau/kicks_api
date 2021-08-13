# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


################################### Users #######################################
  User.create!(
    email: "1@dev.com",
    password_digest: "password",
    first_name: "David",
    last_name: "Claveau",
    phone_number: "5555555551",
    winter_team: "JDF",
    public_sector: "none",
    image: "..."
  )

  User.create!(
    email: "2@dev.com",
    password_digest: "password",
    first_name: "Joanna",
    last_name: "Player",
    phone_number: "5555555552",
    winter_team: "Sooke",
    public_sector: "Mining",
    image: "..."
  )

  User.create!(
    email: "3@dev.com",
    password_digest: "password",
    first_name: "Mike",
    last_name: "Dude",
    phone_number: "5555555553",
    winter_team: "SPFC",
    public_sector: "Health",
    image: "..."
  )

  User.create!(
    email: "4@dev.com",
    password_digest: "password",
    first_name: "Mary",
    last_name: "Dudette",
    phone_number: "5555555554",
    winter_team: "Gorge",
    public_sector: "Energy",
    image: "..."
  )

  User.create!(
    email: "5@dev.com",
    password_digest: "password",
    first_name: "Mr. Referee",
    last_name: "NoSliding",
    phone_number: "5555555555",
    winter_team: "N/A",
    public_sector: "N/A",
    image: "..."
  )

  User.create!(
    email: "6@dev.com",
    password_digest: "password",
    first_name: "Mr. Manager",
    last_name: "Reganam",
    phone_number: "5555555556",
    winter_team: "N/A",
    public_sector: "N/A",
    image: "..."
  )

  User.create!(
    email: "7@dev.com",
    password_digest: "password",
    first_name: "Jane",
    last_name: "Doe",
    phone_number: "5555555557",
    winter_team: "JDF",
    public_sector: "none",
    image: "..."
  )

  User.create!(
    email: "8@dev.com",
    password_digest: "password",
    first_name: "John",
    last_name: "Smith",
    phone_number: "5555555558",
    winter_team: "Sooke",
    public_sector: "none",
    image: "..."
  )

  User.create!(
    email: "9@dev.com",
    password_digest: "password",
    first_name: "Caitlin",
    last_name: "Howe",
    phone_number: "5555555559",
    winter_team: "SPFC",
    public_sector: "none",
    image: "..."
  )

  User.create!(
    email: "10@dev.com",
    password_digest: "password",
    first_name: "Gerry",
    last_name: "Parker",
    phone_number: "5555555510",
    winter_team: "Gorge",
    public_sector: "none",
    image: "..."
  )

  User.create!(
    email: "11@dev.com",
    password_digest: "password",
    first_name: "Loud",
    last_name: "Mouth",
    phone_number: "5555555511",
    winter_team: "Gorge",
    public_sector: "none",
    image: "..."
  )

################################### Teams #######################################
  Team.create!(
    name: "Team 1",
    jersey_img: "...",
    manager_id: 6
  )
  Team.create!(
    name: "Team 2",
    jersey_img: "...",
    manager_id: 2
  )
  Team.create!(
    name: "Team 3",
    jersey_img: "...",
    manager_id: 3
  )
  Team.create!(
    name: "Team 4",
    jersey_img: "...",
    manager_id: 4
  )

################################### Roster ######################################
  Roster.create!(
    user_id: 1,
    team_id: 1
  )
  Roster.create!(
    user_id: 2,
    team_id: 2
  )
  Roster.create!(
    user_id: 3,
    team_id: 3
  )
  Roster.create!(
    user_id: 4,
    team_id: 4
  )
  Roster.create!(
    user_id: "6",
    team_id: 2
  )
  Roster.create!(
    user_id: 7,
    team_id: 1
  )
  Roster.create!(
    user_id: 8,
    team_id: 2
  )
  Roster.create!(
    user_id: 9,
    team_id: 3
  )
  Roster.create!(
    user_id: 10,
    team_id: 4
  )
  Roster.create!(
    user_id: 11,
    team_id: 4
  )


################################### Role ########################################
  Role.create!(
    name: "Admin",
    description: "Admin of website"
  )
  Role.create!(
    name: "Referee",
    description: "Referee - able to add sportsmanlike players and any disciplinary cards issued during games"
  )
  Role.create!(
    name: "Managers",
    description: "Manager - able to add or remove players from teams"
  )

################################### UserRole ####################################
  # Admin
  UserRole.create!(
    user_id: 1,
    role_id: 1
  )

  # Referee
  UserRole.create!(
    user_id: 5,
    role_id: 2
  )

  # Managers
  UserRole.create!(
    user_id: 6, # Team 1
    role_id: 3
  )

  UserRole.create!(
    user_id: 2, # Team 2
    role_id: 3
  )
  
  UserRole.create!(
    user_id: 3, # Team 3
    role_id: 3
  )
  
  UserRole.create!(
    user_id: 4, # Team 4
    role_id: 3
  )

################################### Resource ####################################
  Resource.create!(
    name: "Team Pages"
  )
  Resource.create!(
    name: "Disciplines"
  )
  Resource.create!(
    name: "Scores"
  )
  Resource.create!(
    name: "Schedules"
  )
  Resource.create!(
    name: "Notices"
  )

################################### RoleResource ################################
  # Admin
  RoleResource.create!(
    role_id: 1,
    resource_id: 1 # Team Pages
  )
  RoleResource.create!(
    role_id: 1,
    resource_id: 2 # Disciplines
  )
  RoleResource.create!(
    role_id: 1,
    resource_id: 3 # Scores
  )
  RoleResource.create!(
    role_id: 1,
    resource_id: 4 # Schedules
  )
  RoleResource.create!(
    role_id: 1,
    resource_id: 5 # Notices
  )

  # Referee
  RoleResource.create!(
    role_id: 2,
    resource_id: 2 # Disciplines
  )
  RoleResource.create!(
    role_id: 2,
    resource_id: 3 # Scores
  )

  # Manager
  RoleResource.create!(
    role_id: 3,
    resource_id: 1 # Team Pages
  )

################################### Schedule ####################################
  Schedule.create!(
    season: "2021",
    game_date: "2021-08-31",
    game_day: "Tuesday",
    game_time: "18:00",
    home_team_id: 1,
    away_team_id: 2,
    field: "Topaz",
    holiday: false
  )

  Schedule.create!(
    season: "2021",
    game_date: "2021-08-31",
    game_day: "Tuesday",
    game_time: "18:00",
    home_team_id: 3,
    away_team_id: 4,
    field: "Gorge",
    holiday: false
  )

  Schedule.create!(
    season: "2021",
    game_date: "2021-09-06",
    game_day: "Tuesday",
    game_time: "18:00",
    home_team_id: 1,
    away_team_id: 2,
    field: "Holiday",
    holiday: true
  )

################################### Result ######################################
  Result.create!(
    schedule_id: 1,
    home_female_player_id: 7,
    home_male_player_id: 1,
    away_female_player_id: 2,
    away_male_player_id: 8
  )
  Result.create!(
    schedule_id: 2,
    home_female_player_id: 9,
    home_male_player_id: 3,
    away_female_player_id: 4,
    away_male_player_id: 10
  )

################################### Discipline ##################################
  Discipline.create!(
    user_id: 8,
    card: "yellow",
    reason: "slide tackling more than once",
    action: ""
  )

  Discipline.create!(
    user_id: 11,
    card: "red",
    reason: "Multiple instances of Offensive, Insulting and Abusive language and actions, and Dissent, directed towards the match official.",
    action: "12-game suspension"
  )
  