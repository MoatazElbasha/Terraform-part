resource "aws_security_group" "lb_sg" {
  vpc_id = var.vpc_id
  name    = "load-balancer-sg"
  description = "Security group for load balancer"

  ingress {
    from_port   = 7946
    to_port     = 7946
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 7946
    to_port     = 7946
    protocol    = "UDP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4789
    to_port     = 4789
    protocol    = "UDP"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 2377
    to_port     = 2377
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
   ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }




  #ingress {
    #from_port   = 443
    #to_port     = 443
    #protocol    = "tcp"
    #cidr_blocks = ["0.0.0.0/0"]
  #}

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


#resource "aws_security_group" "web_sg" {
 # vpc_id = var.vpc_id
  #name    = "web-sg"
  #description = "Security group for web servers"

  #ingress {
   # from_port   = 80
    #to_port     = 80
    #protocol    = "tcp"
    #security_groups = [aws_security_group.lb_sg.id]
  #}
  #ingress {
   # from_port   = 8080
    #to_port     = 8080
    #protocol    = "tcp"
    #cidr_blocks = ["0.0.0.0/0"]
  #}

  #ingress {
    #from_port   = 443
    #to_port     = 443
    #protocol    = "tcp"
    #security_groups = [aws_security_group.lb_sg.id]
  #}

 
  #ingress {
   # from_port   = 22
    #to_port     = 22
    #protocol    = "tcp"
    #cidr_blocks = ["0.0.0.0/0"] 
  #}

  # Allow all outbound traffic
  #egress {
   # from_port   = 0
    #to_port     = 0
    #protocol    = "-1"
    #cidr_blocks = ["0.0.0.0/0"]
  #}
#}
