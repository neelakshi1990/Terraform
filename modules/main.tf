
module module1{
	source = "./config"
	name = var.vm1
	count1 = var.vm2
	
}

module module2{
	source = "./config"
	name = "abd"
	len = 13
}


variable vm1{
default="neelakshi"
type = string
}

variable vm2{
default = 123
type = any
}
