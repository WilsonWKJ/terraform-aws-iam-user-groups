output "password" {
  value = aws_iam_user_login_profile.new_user_login_profile[*].encrypted_password
}