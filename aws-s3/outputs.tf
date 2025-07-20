# To get the ouptut after the server created and print on terminal.
output "name" {
  value = random_id.rand_id.hex
}