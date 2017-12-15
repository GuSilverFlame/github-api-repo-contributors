require_relative 'executioner'
Executioner.new(
  "Dinda-com-br",
  "braspag-rest",
  ["name", "email", "login", "avatar_url", "contributions"]
).execute
