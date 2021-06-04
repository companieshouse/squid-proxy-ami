build {
  sources = [
    "source.amazon-ebs.builder",
  ]

  provisioner "ansible" {
    host_alias = "${var.ansible_host_alias}"
    playbook_file = "${var.playbook_file_path}"
    extra_arguments  = [
      "-e", "aws_region=${var.aws_region}",
      "-e", "s3_config_bucket=${var.s3_config_bucket}",
      "-e", "s3_config_bucket_access_key=${var.s3_config_bucket_access_key}",
      "-e", "s3_config_bucket_secret_key=${var.s3_config_bucket_secret_key}",            
      "-e", "nagios_api_key=${var.nagios_api_key}"
    ]
  }
}
