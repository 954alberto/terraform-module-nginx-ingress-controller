## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| helm | n/a |
| kubernetes | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| aws\_route53 | These are the route53 details where to register the route53 entry. | `any` | n/a | yes |
| chart | Helm chart name | `any` | n/a | yes |
| chart\_version | Helm chart version | `any` | n/a | yes |
| helm\_repository | Helm repository name | `any` | n/a | yes |
| helm\_repository\_url | Helm repository url | `any` | n/a | yes |
| helm\_values | Helm values for cosmic cloud controller chart. | `any` | n/a | yes |
| name | Name of the Helm release | `any` | n/a | yes |
| namespace | Namespace of the Helm release | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| nginx-ingress-hostname | n/a |
| nginx-ingress-lb | n/a |

