# # Assign IAM users to groups in specific regions
# resource "aws_iam_user_group_membership" "new_group_memberships" {
#   count = length(var.fourty_test_emails)
#   user = var.fourty_test_emails[count.index]
#   groups = [
#     # Associate each user with a specific group
#     var.five_test_groups[floor(count.index / 8) % length(var.five_test_groups)]
#   ]

#   depends_on = [
#     aws_iam_user.new_iam_users,
#     aws_iam_group.new_iam_groups
#   ]
# }