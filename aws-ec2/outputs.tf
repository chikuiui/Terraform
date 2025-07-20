# To get the ouptut after the server created and print on terminal.
output "aws_instance_public_ip" {
  value = aws_instance.myserver.public_ip
}