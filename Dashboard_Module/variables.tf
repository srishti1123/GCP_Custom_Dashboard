variable "project_id" {
  type        = string
  description = "Project where the dashboard is created and logs are read from"
}

variable "display_name" {
  type        = string
  description = "Dashboard name shown in the console"
}

variable "widget_title" {
  type        = string
  description = "Title of the logs widget"
}

variable "log_filter" {
  type        = string
  description = "Cloud Logging filter used by the logs panel"
}

variable "columns" {
  type        = number
  description = "Number of grid columns in the dashboard"
}

variable "x_pos" {
  type    = number
}

variable "y_pos" {
  type    = number
}

variable "width" {
  type    = number
}

variable "height" {
  type    = number
}