provider "random" {
}

resource "random_string" "test" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "test" {
  value = random_string.test.id
}