resource "aws_iam_user_login_profile" "new_user_login_profile" {
  count = length(flatten(values(var.groups_users)))
  user                    = flatten(values(var.groups_users))[count.index]
  password_reset_required = true
  # password                = "initial_password"
  # encrypted_password = "aW5pdGlhbF9wYXNzd29yZA=="
  # pgp_key = "keybase:wilsonwkj"

  depends_on = [
    aws_iam_user.iam_users
   ]
}

