data "oci_identity_availability_domains" "ads" {
    compartment_id = var.tenancy_ocid
}

data "oci_core_images" "ubuntu" {
    compartment_id   = var.compartment_ocid
    operating_system = "Canonical Ubuntu"
    sort_by          = "TIMECREATED"
    sort_order       = "DESC"
}

resource "oci_core_instance" "this" {
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id      = var.compartment_ocid
    shape               = var.instance_shape
    display_name        = "golang-api"

    create_vnic_details {
        subnet_id        = var.subnet_id
        assign_public_ip = true
    }

    source_details {
        source_type = "image"
        source_id   = data.oci_core_images.ubuntu.images[0].id
    }

    metadata = {
        ssh_authorized_keys = file(var.ssh_public_key_path)
        user_data = base64encode(
            file("${path.module}/cloud-init.yml")
        )
    }
}