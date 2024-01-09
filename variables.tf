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
# Define the list of regions
variable "regions" {
  default = [
    "us-east-1",
    "us-east-2",
    "us-west-1",
    "us-west-2",
    "us-west-3"
  ]
}