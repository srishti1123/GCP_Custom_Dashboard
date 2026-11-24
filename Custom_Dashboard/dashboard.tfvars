project_id   = "sisl-internal-alloydb-testing"
region       = "asia-south1"
display_name = "terraform-test"
columns      = 12

widgets = [
  {
    type   = "logsPanel"
    title  = "HTTP 403 errors"
    filter = "httpRequest.status=403 OR protoPayload.status.code=7"
    x_pos  = 0
    y_pos  = 0
    width  = 6
    height = 6
  },
  {
    type   = "logsPanel"
    title  = "HTTP 5xx errors"
    filter = "httpRequest.status>=500"
    x_pos  = 6
    y_pos  = 0
    width  = 6
    height = 6
  },
  {
    type   = "xyChart"
    title  = "VM CPU utilization"
    filter = "metric.type=\"compute.googleapis.com/instance/cpu/utilization\" resource.type=\"gce_instance\""
    x_pos  = 0
    y_pos  = 6
    width  = 12
    height = 6
  }
]