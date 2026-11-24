module "logs_403_dashboard" {
  source = "../Dashboard_Module"

  project_id   = var.project_id
  display_name = var.display_name
  widget_title = var.widget_title
  log_filter   = var.log_filter
}
