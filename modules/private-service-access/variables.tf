/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "The project ID of the VPC network to peer. This can be a shared VPC host projec."
  type        = string
}

variable "vpc_network" {
  description = "Name of the VPC network to peer."
  type        = string
}

variable "address" {
  description = "First IP address of the IP range to allocate to CLoud SQL instances and other Private Service Access services. If not set, GCP will pick a valid one for you."
  type        = string
  default     = "10.10.21.1"
}

// variable "name" {
//   type        = string
// }

variable "num_ip_ranges" {
  type        = number
}

variable "prefix_length" {
  description = "Prefix length of the IP range reserved for Cloud SQL instances and other Private Service Access services. Defaults to /16."
  type        = number
  default     = 24
}

variable "ip_version" {
  description = "IP Version for the allocation. Can be IPV4 or IPV6."
  type        = string
  default     = "IPV4"
}

variable "labels" {
  description = "The key/value labels for the IP range allocated to the peered network."
  type        = map(string)
  default     = {}
}

variable "network_self_link" {}