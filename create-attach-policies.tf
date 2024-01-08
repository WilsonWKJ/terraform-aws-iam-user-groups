# # Define the list of regions
# variable "regions" {
#   default = [
#     "us-east-1",
#     "us-east-2",
#     "us-west-1",
#     "us-west-2",
#     "us-west-3"
#   ]
# }

# # Create IAM policies for each region
# resource "aws_iam_policy" "region_policies" {
#   count = length(var.regions)

#   name        = "policy-restrict-in-${var.regions[count.index]}"
#   description = "Restrict access to resources within ${var.regions[count.index]}"

#   policy = jsonencode({
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": "*",
#             "Resource": "*",
#             "Condition": {
#                 "StringEquals": {
#                     "aws:RequestedRegion": "$var.regions[count.index]"
#                 }
#             }
#         }
#     ]
#   })
# }

# # Attach policies to IAM groups based on regions
# resource "aws_iam_policy_attachment" "attach_region_policies" {
#   count = length(var.regions)

#   name       = aws_iam_policy.region_policies[count.index].name
#   policy_arn = aws_iam_policy.region_policies[count.index].arn

#   # Attach the policy to the respective IAM group based on the region
#   groups = [
#     aws_iam_group.new_iam_groups[count.index].name
#   ]

#   depends_on = [
#     aws_iam_group.new_iam_groups,
#     aws_iam_policy.region_policies
#   ]
# }
