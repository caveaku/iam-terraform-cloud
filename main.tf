provider "aws" {
   region = "us-east-1"
}

resource "aws_iam_user" "pascalin" {
  name = "pascalin"
  path = "/system/"

  tags = {
    Name = "iam-user"
  }
}

resource "aws_iam_access_key" "accesskey" {
  user = aws_iam_user.pascalin.name
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "test"
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
