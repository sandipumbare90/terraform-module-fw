module "firewall-module" {
  source = "terraform-google-modules/network/google//modules/firewall-rules"
  version = "9.1.0"

  project_id = "devops-engineer-123"

  network_name = "projects/devops-engineer-123/global/networks/my-vpc-01"
  rules = [{
    name = "my-first-custom-fw"
    direction = "INGRESS"
    priority = 1000
    source_ranges = ["0.0.0.0/0"]
    source_tags = null
    source_service_accounts = null
    destination_ranges = ["10.0.10.0/24", "10.0.20.0/24"]
    target_tags = null
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      port = ["8080", "443"]
            }]
    deny = []
    
}]
}
