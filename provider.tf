terraform {
  backend "remote" {
    organization = "wescalefr"

    workspaces {
      name = "merouane-tfws"
    }
  }
}