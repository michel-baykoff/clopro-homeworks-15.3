variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = "b1gl64e88ikeen8dirm0"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default = "b1gp9jvqe20q1f94c6c3"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vpc_name" {
  type        = string
  default     = "netology"
  description = "VPC network"
}

variable "vpc_subnet_public" {
  type        = string
  default     = "public"
  description = "VPC network"
}

variable "vpc_subnet_public_cidr" {
  type        = list(string)
  default     = ["10.0.0.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "file_key" {
  type        = string
  default     = "cat_in_the_hat.jpg"
  description = "file name"
}

variable "file_source" {
   type        = string
  default     = "../../cat-in-the-hat.jpg"
  description = "file path"
}

locals {
  # set SSH keys
  ssh-keys = file("~/.ssh/ed25519.pub")
  ssh-private-keys = file("~/.ssh/ed25519")
  
  #Set bucket name as name plus date
    date = timestamp()
    cur_date = formatdate("DD-MM-YYYY", local.date)
    bucket_name = "baykovms-${local.cur_date}"
}
