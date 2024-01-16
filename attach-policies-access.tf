# # Attach policies to IAM groups based on regions
# resource "aws_iam_policy_attachment" "attach_access_policies" {
#     count = length(flatten([for group, users in var.groups_users : users]))
#     users = flatten([for group, users in var.groups_users : users])
#     name       = aws_iam_policy.create_access_policies.name
#     policy_arn = aws_iam_policy.create_access_policies.arn

# #   # Attach the policy to the respective IAM group based on the region
# #   groups = [
# #     keys(var.groups_users)[count.index]
# #   ]

#     depends_on = [
#         aws_iam_user.iam_users,
#         aws_iam_policy.create_access_policies
#     ]
# }
