resource "newrelic_alert_policy" "ank1" {
  count = length(var.alert_policies)

  name= "example-${var.alert_policies[count.index]}"
  incident_preference = lookup(var.incident_preferences, "policy${count.index + 1}")
 
}



