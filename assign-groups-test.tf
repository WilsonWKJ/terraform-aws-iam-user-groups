resource "aws_iam_group_membership" "test_group_membership" {
  name  = "test-group-membership"
  group = aws_iam_group.test_group.name

  users = var.groups_users["testUser_group"]
  depends_on = [
    aws_iam_user.iam_users,
    aws_iam_group.test_group
   ]
}