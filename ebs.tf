resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.region_az
  size              = var.ebs_size
  type              = var.ebs_type
  encrypted         = var.encrypton
  count             = var.ebs_disk_count
  iops = var.ebs_type == "io1" ? var.iops : 0

  tags = merge(
     {
       Name        = "EBS-${var.ec2_instance_id}-${var.env}-0${count.index + 1}",
       Region      = var.region,
       Encrypted   = var.encrypton,
       Created     = formatdate("DD MMM YYYY", timestamp())
     }
  )
}

output "ebs_vol_id" {
  value = aws_ebs_volume.ebs_volume[*].id
}

resource "aws_volume_attachment" "ebs_attach" {
  count       = var.ebs_disk_count
  device_name = element(var.ec2_device_names, count.index)
  volume_id   = aws_ebs_volume.ebs_volume.*.id[count.index]
  instance_id = var.ec2_instance_id
}

output "ebs_vol_disk_name" {
  value = aws_volume_attachment.ebs_attach[*].device_name
}
