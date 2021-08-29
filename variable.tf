variable "region" {
  default = ""
}

variable "region_az" {
  default = ""
}

variable "ebs_size" {
  type = number
  default = ""
}

variable "ebs_type" {
  default = ""
}

variable "ebs_disk_count" {
  type = number
}

variable "iops" {
  type = number
}

variable "encrypton" {
  default = ""
}

variable "ebs_name" {
  default = ""
}

variable "env" {
  default = ""
}

variable "ec2_device_names" {
  default = [
    "/dev/sdd",
    "/dev/sde",
    "/dev/sdf",
    "/dev/sdg",
    "/dev/sdh",
    "/dev/sdi",
    "/dev/sdj",
    "/dev/sdk", 
    "/dev/sdl",
  ]
}

variable "ec2_instance_id" {
  default = ""
}
