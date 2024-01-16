# # Assign users to groups
# resource "aws_iam_group_membership" "group_memberships" {
#   count = length(keys(var.groups_users))
#   name  = "group-membership-${aws_iam_group.iam_groups[count.index].name}-${count.index}"
#   group = aws_iam_group.iam_groups[count.index].name
#   users = var.groups_users[keys(var.groups_users)[count.index]]

#   depends_on = [
#     aws_iam_user.iam_users,
#     aws_iam_group.iam_groups
#    ]
# }
