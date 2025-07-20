resource "random_string" "example" {
  length  = 11
  special = false
  upper   = false
}

resource "local_file" "example" {
  content  = "This is a random string: ${random_string.example.result}"
  filename = "${path.module}/output.txt"
}
