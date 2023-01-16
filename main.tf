provider "aws" {
   region = var.region   
}

resource "aws_iam_user" "pascaline" {
  name = var.user_name    
  path = "/system/"

  tags = {
    Name = "iam-user"
  }
}

resource "aws_iam_access_key" "accesskey" {
  user = aws_iam_user.pascalin.id
}

resource "aws_iam_user_policy" "lb_ro" {
  name = var.iam_policy_name    
  user = aws_iam_user.pascalin.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
