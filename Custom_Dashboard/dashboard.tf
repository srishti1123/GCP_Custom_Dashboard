module "logs_403_dashboard" {
  source = "../Dashboard_Module"

  project_id   = var.project_id
  display_name = var.display_name
  columns      = var.columns
  widgets      = var.widgets 
}

