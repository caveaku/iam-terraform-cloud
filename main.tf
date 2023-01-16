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

resource "aws_iam_access_key" "pascalin" {
  user = aws_iam_user.pascalin.name
}

resource "aws_iam_user_policy" "pascalin" {
  name = var.iam_policy_name    
  user = aws_iam_user.pascalin.name

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
