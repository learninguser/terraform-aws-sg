resource "aws_security_group" "roboshop" {
  name        = var.sg_name
  description = var.description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress
    iterator = abc

    content {
      description = abc.value.description
      from_port   = abc.value.from_port
      to_port     = abc.value.to_port
      protocol    = abc.value.protocol
      cidr_blocks = abc.value.cidr_blocks
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    {
      Name = "${var.project_name}-${var.sg_name}"
    },
    var.common_tags,
    var.sg_tags
  )
}
