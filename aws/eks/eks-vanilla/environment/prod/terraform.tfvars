project_name = "lab01"
region       = "us-east-1"
k8s_version  = "1.31"

ssm_vpc = "/eks-labs-vpc/vpc/id"
ssm_public_subnets = [
  "/eks-labs-vpc/subnets/public/us-east-1a/eks-labs-public-1a",
  "/eks-labs-vpc/subnets/public/us-east-1b/eks-labs-public-1b",
  "/eks-labs-vpc/subnets/public/us-east-1c/eks-labs-public-1c",
]

ssm_private_subnets = [
  "/eks-labs-vpc/subnets/private/us-east-1a/eks-labs-private-1a",
  "/eks-labs-vpc/subnets/private/us-east-1b/eks-labs-private-1b",
  "/eks-labs-vpc/subnets/private/us-east-1c/eks-labs-private-1c",
]

ssm_pod_subnets = [
  "/eks-labs-vpc/subnets/private/us-east-1a/eks-labs-pods-1a",
  "/eks-labs-vpc/subnets/private/us-east-1b/eks-labs-pods-1b",
  "/eks-labs-vpc/subnets/private/us-east-1c/eks-labs-pods-1c",
]

auto_scale_options = {
  min     = 2
  max     = 2
  desired = 2
}

nodes_instance_sizes = ["t3.medium"]
