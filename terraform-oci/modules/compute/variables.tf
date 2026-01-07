variable "compartment_ocid" {
    type = string
}

variable "tenancy_ocid" {
    type = string
}

variable "subnet_id" {
    type = string
}

variable "ssh_public_key_path" {
    type = string
}

variable "instance_shape" {
    type    = string
    default = "VM.Standard.E2.1.Micro"
}