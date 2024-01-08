# Create IAM users
resource "aws_iam_user" "new_iam_users" {
  count = length(var.fourty_test_emails)
  name  = var.fourty_test_emails[count.index]  # Use email as username
}

# Create IAM groups
resource "aws_iam_group" "new_iam_groups" {
  count = length(var.five_test_groups)
  name  = var.five_test_groups[count.index]
}