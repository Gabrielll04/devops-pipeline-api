module "network" {
    source           = "./modules/network"
    compartment_ocid = var.compartment_ocid
    vcn_cidr         = "10.0.0.0/16"
    subnet_cidr      = "10.0.1.0/24"
}

module "security" {
    source           = "./modules/security"
    compartment_ocid = var.compartment_ocid
    vcn_id           = module.network.vcn_id
}

module "compute" {
    source               = "./modules/compute"
    compartment_ocid     = var.compartment_ocid
    tenancy_ocid         = var.tenancy_ocid
    subnet_id            = module.network.subnet_id
    ssh_public_key_path  = var.ssh_public_key_path
}