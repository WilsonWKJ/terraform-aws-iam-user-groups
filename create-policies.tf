# Create IAM policies for each region
resource "aws_iam_policy" "region_policies" {
  count = length(var.regions)
  name        = "policy-restrict-in-${var.regions[count.index]}"
  description = "Restrict access to resources within ${var.regions[count.index]}"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "RestrictRegion"
            "Effect": "Allow",
            "Condition": {
                "StringEquals": {
                    "aws:RequestedRegion": "$var.regions[count.index]"
                }
            },
            "Action": "*",
            "Resource": "*"
        },
        {
            "Sid": "EnforceMFA",
            "Effect": "Deny",
            "Condition": {
                "BoolIfExists": {
                    "aws:MultiFactorAuthPresent": "false"
                }
            },
            "NotAction": [
                "iam:CreateVirtualMFADevice",
                "iam:DeleteVirtualMFADevice",
                "iam:ListVirtualMFADevices",
                "iam:EnableMFADevice",
                "iam:ResyncMFADevice",
                "iam:ListAccountAliases",
                "iam:ListUsers",
                "iam:ListSSHPublicKeys",
                "iam:ListAccessKeys",
                "iam:ListServiceSpecificCredentials",
                "iam:ListMFADevices",
                "iam:GetAccountSummary",
                "sts:GetSessionToken",
                "iam:GetAccountPasswordPolicy",
                "iam:ChangePassword"
            ],
            "Resource": "*"
        },
        {
            "Sid": "RestrictIamUserGroupPermission",
            "Effect": "Deny",
            "Action": [
                "iam:*Group*",
                "iam:CreateUser",
                "iam:UpdateUser",
                "iam:DeleteUser",
                "iam:CreateAccount*",
                "iam:UpdateAccount*",
                "iam:DeleteAccount*"
            ],
            "Resource": "*"
        },
        {
            "Sid": "RestrictIamPersonalSecurityPage",
            "Condition": {
                "BoolIfExists": {
                    "aws:MultiFactorAuthPresent": "true"
                }
            },
            "Effect": "Deny",
            "Action": [
                "iam:*AccessKey*",
                "iam:*SSH*",
                "iam:*Credentials*",
                "iam:*Certificates*",
                "iam:*SAML*",
                "iam:ChangePassword",
                "iam:GetUser",
                "iam:UpdateUser",
                "iam:GetLoginProfile",
                "iam:ListGroupsForUser"
            ],
            # "Resource": "*"
            "NotResource": [
                "arn:aws:iam::*:user/{{aws:username}}"
            ]
        }
    ]
  })
}