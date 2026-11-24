locals {
  tiles = [
    for w in var.widgets : {
      xPos   = w.x_pos
      yPos   = w.y_pos
      width  = w.width
      height = w.height

      widget = merge(
        { title = w.title },
        {
          for k, v in {
            logsPanel = {
              filter        = w.filter
              resourceNames = ["projects/${var.project_id}"]
            }
            xyChart = {
              dataSets = [{
                plotType = "LINE"
                timeSeriesQuery = {
                  timeSeriesFilter = {
                    filter = w.filter
                    aggregation = {
                      alignmentPeriod  = "60s"
                      perSeriesAligner = "ALIGN_MEAN"
                    }
                  }
                }
              }]
            }
          } : k => v if k == w.type
        }
      )
    }
  ]
}

resource "google_monitoring_dashboard" "this" {
  project = var.project_id

  dashboard_json = jsonencode({
    displayName = var.display_name
    mosaicLayout = {
      columns = var.columns
      tiles   = local.tiles
    }
  })
}

