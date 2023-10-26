/*variable "alert_policies" {
  type    = list(string)
}

variable "incident_preferences" {
  type    = map(string)
}

variable "account_id" {
  type    = number
}*/

#count variable precedence
variable "num_alert_policies" {
  type = number
  default = 4
}