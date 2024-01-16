# Create IAM users
resource "aws_iam_user" "iam_users" {
  count = length(flatten(values(var.groups_users)))
  name = flatten(values(var.groups_users))[count.index]
}