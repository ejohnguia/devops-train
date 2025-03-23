provider "vault" {
  address = "http://127.0.0.1:8200"
  #   token = <root token> 
}

data "vault_generic_secret" "phone_number" {
  path = "secret/app"
}

output "phone_number" {
  sensitive = true
  value     = data.vault_generic_secret.phone_number.data["phone_number"]
}

resource "aws_instance" "app" {
  password_data = data.vault_generic_secret.phone_number.data["password"]
}