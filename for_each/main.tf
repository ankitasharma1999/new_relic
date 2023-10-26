#for_each
resource "newrelic_alert_policy" "ank1" {
  for_each = var.incident_preferences

  name              = "example-${each.value
  }"
  incident_preference = each.value
  account_id        = var.account_id
}


#count variavle precedence
resource "newrelic_alert_policy" "ank1" {
  count = var.num_alert_policies
  name = "example-${count.index + 1}"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}