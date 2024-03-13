resource "aws_lightsail_instance" "server1" {
  name = "lamp-server"
  bundle_id = "medium_1_0"
  blueprint_id = "centos_7_2009_01"
  key_pair_name = "week9d1"
  availability_zone = "us-east-1a"
  user_data = file("resume.sh")
}