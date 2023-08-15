ui = true
disable_mlock = true
enable_response_header_hostname = true
enable_response_header_raft_node_id = true

storage "raft" {
  path    = "/vault/raft"
  node_id = "raft_node_1"
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
cluster_addr = "http://127.0.0.1:8201"
