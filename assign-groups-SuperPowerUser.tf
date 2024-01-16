resource "aws_iam_group_membership" "super_power_user_membership" {
  name  = "super-power-user-membership"
  group = "SuperPowerUsers"

  users = var.groups_users["SuperPowerUser_group"]
  
  depends_on = [
    aws_iam_user.iam_users
   ]
}