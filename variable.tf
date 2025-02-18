variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "kubernetes_version" {
  default = "1.28"

}
variable "instance_type" {
  default = "t3.medium"

}