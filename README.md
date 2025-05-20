# Simple Terraform Module to deploy a GCP VM

This repository contains simple Terraform code to deploy a GCP VM.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| google | ~>4.55 |

## Providers

| Name | Version |
|------|---------|
| google | ~>4.55 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.simple_vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_compute_image.ubuntu_image](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| prefix | Prefix for VM names | `string` | n/a | yes |
| machine\_type | Machine type for VMs | `string` | `"f1-micro"` | no |
| node\_count | Number of VMs to create | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| public\_ip | Public IP address of the VMs |
<!-- END_TF_DOCS -->
