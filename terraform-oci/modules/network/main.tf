resource "oci_core_vcn" "this" {
    compartment_id = var.compartment_ocid
    cidr_block     = var.vcn_cidr
    display_name   = "main-vcn"
}

resource "oci_core_internet_gateway" "this" {
    compartment_id = var.compartment_ocid
    vcn_id         = oci_core_vcn.this.id
    enabled        = true
}

resource "oci_core_route_table" "this" {
    compartment_id = var.compartment_ocid
    vcn_id         = oci_core_vcn.this.id

    route_rules {
        destination       = "0.0.0.0/0"
        network_entity_id = oci_core_internet_gateway.this.id
    }
}

resource "oci_core_subnet" "this" {
    compartment_id = var.compartment_ocid
    vcn_id         = oci_core_vcn.this.id
    cidr_block     = var.subnet_cidr
    route_table_id = oci_core_route_table.this.id
    security_list_ids = var.security_list_ids
    prohibit_public_ip_on_vnic = false
}