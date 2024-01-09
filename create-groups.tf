# Create IAM groups
resource "aws_iam_group" "iam_groups" {
  count = length(keys(var.groups_users))
  name = keys(var.groups_users)[count.index]
}