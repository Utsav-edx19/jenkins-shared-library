resource "null_resource" "local_resource" {
  provisioner "local-exec" {
    command = "echo hi > sample.txt"
  }
}