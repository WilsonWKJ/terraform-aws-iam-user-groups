# Attach policies to IAM groups based on regions
resource "aws_iam_policy_attachment" "attach_region_policies" {
  count = length(var.regions)

  name       = aws_iam_policy.region_policies[count.index].name
  policy_arn = aws_iam_policy.region_policies[count.index].arn

  # Attach the policy to the respective IAM group based on the region
  groups = [
    keys(var.groups_users)[count.index]
  ]

  depends_on = [
    aws_iam_group.iam_groups,
    aws_iam_policy.region_policies
  ]
}
