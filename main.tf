resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 12

  provisioner "local-exec" {
      command = "python3 --version"
  }
}

output "random" {
  value = random_id.random.hex
}
