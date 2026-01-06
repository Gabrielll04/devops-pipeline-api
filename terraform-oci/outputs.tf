output "all_availability_domains" {
  description = "All availability domains in the tenancy"
  value       = data.oci_identity_availability_domains.ads.availability_domains
}