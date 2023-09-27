terraform {
  cloud {
    organization = "test-org-arif"
    workspaces {
      prefix = "arif-tf-test-1-tobedeleted"
    }
  }
}