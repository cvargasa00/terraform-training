data "akamai_group" "group_info" {
    group_name  = "CVARGASA-TEST"
    contract_id = "ctr_1-1NC95D"
}

data "akamai_appsec_configuration" "sec_info" {
    name  = "cvargasa_ksd"
}
data "akamai_property" "property_info" {
  name    = "cvargasa-master-lab"
  version = "644"
}

output "property_config" {
  value = data.akamai_property.property_info
}