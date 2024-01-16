# Create IAM users
resource "aws_iam_user" "iam_users" {
  count = length(flatten(values(var.groups_users)))
  name = flatten(values(var.groups_users))[count.index]
}
resource "aws_iam_user_login_profile" "new_user_login_profile" {
  count = length(flatten(values(var.groups_users)))
  user                    = flatten(values(var.groups_users))[count.index]
  password_reset_required = true
  # password                = "mRQH4(x("
  
  depends_on = [
    aws_iam_user.iam_users
   ]
}