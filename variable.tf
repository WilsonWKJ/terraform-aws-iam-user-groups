# # List of emails for 4 users
# variable "fourty_test_emails" {
#   default = [
#     "test-user1@example.com",
#     "test-user2@example.com",
#     "test-user3@example.com",
#     "test-user4@example.com",
#     "test-user5@example.com",
#     "test-user6@example.com",
#     "test-user7@example.com",
#     "test-user8@example.com",
#     "test-user9@example.com",
#     "test-user10@example.com",
#     "test-user11@example.com",
#     "test-user12@example.com",
#     "test-user13@example.com",
#     "test-user14@example.com",
#     "test-user15@example.com",
#     "test-user16@example.com",
#     "test-user17@example.com",
#     "test-user18@example.com",
#     "test-user19@example.com",
#     "test-user20@example.com",
#     "test-user21@example.com",
#     "test-user22@example.com",
#     "test-user23@example.com",
#     "test-user24@example.com",
#     "test-user25@example.com",
#     "test-user26@example.com",
#     "test-user27@example.com",
#     "test-user28@example.com",
#     "test-user29@example.com",
#     "test-user30@example.com",
#     "test-user31@example.com",
#     "test-user32@example.com",
#     "test-user33@example.com",
#     "test-user34@example.com",
#     "test-user35@example.com",
#     "test-user36@example.com",
#     "test-user37@example.com",
#     "test-user38@example.com",
#     "test-user39@example.com",
#     "test-user40@example.com",
#   ]
# }

# # List of group names and their corresponding regions
# variable "five_test_groups" {
#   default = [
#     "test-group1",
#     "test-group2",
#     "test-group3",
#     "test-group4",
#     "test-group5"
#   ]
# }

variable "groups_users" {
    type = map(list(string))
    default = {
    group1 = ["test-user1", "test-user2", "test-user3", "test-user4", "test-user5", "test-user6", "test-user7", "test-user8"],
    group2 = ["test-user9", "test-user10", "test-user11", "test-user12", "test-user13", "test-user14", "test-user15", "test-user16"],
    group3 = ["test-user17", "test-user18", "test-user19", "test-user20", "test-user21", "test-user22", "test-user23", "test-user24"],
    group4 = ["test-user25", "test-user26", "test-user27", "test-user28", "test-user29", "test-user30", "test-user31", "test-user32"],
    group5 = ["test-user33", "test-user34", "test-user35", "test-user36", "test-user37", "test-user38", "test-user39", "test-user40"],
  }
}