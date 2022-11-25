ui = true

storage "file" {
  path    = "/vault/file"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

telemetry {
  prometheus_retention_time = "24h"
  disable_hostname = true
}

api_addr = "http://0.0.0.0:8200"
cluster_addr = "https://127.0.0.1:8201"
