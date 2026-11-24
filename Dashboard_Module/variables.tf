variable "project_id" {
  type = string
}

variable "display_name" {
  type = string
}

variable "columns" {
  type = number
}

variable "widgets" {
  type = list(object({
    type   = string
    title  = string
    filter = string
    x_pos  = number
    y_pos  = number
    width  = number
    height = number
  }))
}