variable "compartment_ocid" {
    type = string
}

variable "vcn_cidr" {
    type = string
}

variable "subnet_cidr" {
    type = string
}

variable "security_list_ids" {
    description = "Security Lists attached to subnet"
    type        = list(string)
}