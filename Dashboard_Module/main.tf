resource "google_monitoring_dashboard" "this" {
  project = var.project_id

  dashboard_json = jsonencode({
    displayName = var.display_name
    mosaicLayout = {
      columns = var.columns
      tiles = [
        {
          xPos   = var.x_pos
          yPos   = var.y_pos
          width  = var.width
          height = var.height
          widget = {
            title = var.widget_title
            logsPanel = {
              filter        = var.log_filter
              resourceNames = ["projects/${var.project_id}"]
            }
          }
        }
      ]
    }
  })
}
