resource "local_file" "A1" {
  filename = "A1file.txt"
  content  = "create before detroy"
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "A2" {
  filename = "A2file.txt"
  default  = "implicit dependency"
  content  = local_file.A1.id
}

resource "local_file" "A3" {
  filename = "A3file.txt"
  content  = "explicit dependency && prevent destroy"
  lifecycle {
    prevent_destroy = true
  }
  depends_on = [local_file.A2]
}

resource "local_file" "A4" {
  filename = "A4file.txt"
  content  = "ignore changes"
  lifecycle {
    ignore_changes = [content]
  }
  depends_on = [local_file.A3]
}

output "output1" {
  value = local_file.A1.content
}

output "output3" {
  value = local_file.A3.content
}
output "output4" {
  value = local_file.A4.content
}
