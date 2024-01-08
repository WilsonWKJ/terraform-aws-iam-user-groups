# List of emails for 4 users
variable "fourty_test_emails" {
  default = [
    "test-user1@example.com",
    "test-user2@example.com",
    "test-user3@example.com",
    "test-user4@example.com",
    "test-user5@example.com",
    "test-user6@example.com",
    "test-user7@example.com",
    "test-user8@example.com",
    "test-user9@example.com",
    "test-user10@example.com",
    "test-user11@example.com",
    "test-user12@example.com",
    "test-user13@example.com",
    "test-user14@example.com",
    "test-user15@example.com",
    "test-user16@example.com",
    "test-user17@example.com",
    "test-user18@example.com",
    "test-user19@example.com",
    "test-user20@example.com",
    "test-user21@example.com",
    "test-user22@example.com",
    "test-user23@example.com",
    "test-user24@example.com",
    "test-user25@example.com",
    "test-user26@example.com",
    "test-user27@example.com",
    "test-user28@example.com",
    "test-user29@example.com",
    "test-user30@example.com",
    "test-user31@example.com",
    "test-user32@example.com",
    "test-user33@example.com",
    "test-user34@example.com",
    "test-user35@example.com",
    "test-user36@example.com",
    "test-user37@example.com",
    "test-user38@example.com",
    "test-user39@example.com",
    "test-user40@example.com",
  ]
}

# List of group names and their corresponding regions
variable "five_test_groups" {
  default = [
    "test-group1",
    "test-group2",
    "test-group3",
    "test-group4",
    "test-group5"
  ]
}

variable "groups-users" {
    type = map(list(string))
    default = {
    group1 = ["user1", "user2", "user3", "user4", "user5", "user6", "user7", "user8"],
    group2 = ["user9", "user10", "user11", "user12", "user13", "user14", "user15", "user16"],
    group3 = ["user17", "user18", "user19", "user20", "user21", "user22", "user23", "user24"],
    group4 = ["user25", "user26", "user27", "user28", "user29", "user30", "user31", "user32"],
    group5 = ["user33", "user34", "user35", "user36", "user37", "user38", "user39", "user40"],
  }
}