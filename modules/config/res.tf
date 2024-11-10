resource local_file f1{
				filename = var.name
				content = random_string.r1.length
			}
			
			resource random_string r1 {
				length =var.count1
			}
			

                         resource random_string r2 {
                                length= var.len
                        }




		variable name{
				default = "kurchi"
				type = string
			}
			variable count1{
				default = "abc"
				type=string
			}


                      variable len{
                                default = 12
                                type=number
                        }


