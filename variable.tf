#storageAccount Variables

variable "name" {
  type = string
}

variable "location" {
  type=string
}

variable "account_tier" {
  type = string
}

variable "account_replication_type" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "queuenames" {
  type = set(string)
}


#container variables

variable "container_access_type" {
  type = string
}

variable "storagecontainers" {
  type = set(string)
}



