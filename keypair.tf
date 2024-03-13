resource "tls_private_key" "lightsail_key" {
  algorithm = "RSA"
  rsa_bits = 2048
}

resource "aws_lightsail_key_pair" "lightsail_key" {
  name = "week9d1"
  public_key = tls_private_key.lightsail_key.public_key_openssh

}

resource "local_file" "ssh_key" {
  filename = "week9d1.pem"
  content = tls_private_key.lightsail_key.private_key_pem
}