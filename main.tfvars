billing_account_id        = "018BC9-549406-B7C8C3"
org_id                    = "392828863790"
region                    = "us-west1"
zone                      = "us-west1-c"
target_service_account    = "tf-sa01@secops-311714.iam.gserviceaccount.com"
folder_name               = "shared"
project_name              = "shared-vpc-project"
project_id                = "secops-311714"
network_name              = "shared-vpc"
subnetwork1_name          = "shared-vpc-subnet-01"
subnetwork2_name          = "shared-vpc-subnet-01"
ip_range_pods             = "shared-vpc-subnet-01-01"
ip_range_services         = "shared-vpc-subnet-01-02"
cluster_name              = "maincluster"
default_max_pods_per_node = "30"
projects                  = ["gke-project","db-project"]

// subnetwork                     = "first-network-subnet-01"
name                           = "ios-memcache"
memory_size_mb                 = "1024"
enable_apis                    = true
cpu_count                      = "1"
name_redis                     = "ios-redis"
memory_size_gb                 = "1"
pg_ha_name                     = "pit"
pg_ha_external_ip_range        = "0.0.0.0/0"

num_ip_ranges                  = 3
