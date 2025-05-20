variable "region" {
  type        = string
  description = "The AWS region to deploy resources in"
  default     = "us-west-2" # optional
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}
