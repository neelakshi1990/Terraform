resource "random_string" "example" {
  count    = 3
  length   = 16
  special  = false
  upper    = true
}

output "random_strings" {
  value = [for s in random_string.example : s.result]
}


locals {
  user_list = ["user1", "user2", "user3"]
}

resource "random_password" "user_passwords" {
  for_each = toset(local.user_list)
  length   = 12
  special  = true
}

output "user_passwords" {
  value = { for k, v in random_password.user_passwords : k => v.result }
}


resource "random_integer" "random_numbers" {
  count = 5
  min   = 1
  max   = 100
}

output "random_numbers" {
  value = [for i in random_integer.random_numbers : i.result]
}

