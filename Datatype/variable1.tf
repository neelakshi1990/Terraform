variable "demo_string" {
  type    = string
  default = "string variable"
}

variable "demo_number" {
  type    = number
  default = 123
}


variable "demo_bool" {
  type    = bool
  default = true
}

variable "demo_list" {
  type    = list(any)
  default = [1, "list", 2, "strings"]
}

variable "demo_map" {
  type = map(any)
  default = { name = "neelakshi"
    class = 2
  roll = 16 }
}

variable "demo_object" {
  type = object({
    name  = string
    class = number
    age   = number
  })
  default = ({ name = "neelakshi"
    class = 10
    age   = 18
  })
}

variable "demo_tuple" {
  type    = tuple([string, number, bool])
  default = (["neelakshi", 18, true])
}
