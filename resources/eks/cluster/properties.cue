package cluster

import "strings"

#Properties: {
	AccessConfig?: #AccessConfig
	// Set this value to false to avoid creating the default networking add-ons when the cluster is created.
	BootstrapSelfManagedAddons?: bool
	ComputeConfig?: #ComputeConfig
	ControlPlaneScalingConfig?: #ControlPlaneScalingConfig
	// Set this value to true to enable deletion protection for the cluster.
	DeletionProtection?: bool
	EncryptionConfig?: [...#EncryptionConfig]
	// Force cluster version update
	Force?: bool
	Logging?: #Logging
	// The unique name to give to your cluster.
	Name?: string & =~"^[0-9A-Za-z][A-Za-z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(100)
	OutpostConfig?: #OutpostConfig
	RemoteNetworkConfig?: #RemoteNetworkConfig
	ResourcesVpcConfig: #ResourcesVpcConfig
	// The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
	RoleArn: string
	RollbackConfig?: #RollbackConfig
	StorageConfig?: #StorageConfig
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	UpgradePolicy?: #UpgradePolicy
	// The desired Kubernetes version for your cluster. If you don't specify a value here, the latest version available in Amazon EKS is used.
	Version?: string & =~"1\\.\\d\\d"
	ZonalShiftConfig?: #ZonalShiftConfig
}

#AccessConfig: {
	// Specify the authentication mode that should be used to create your cluster.
	AuthenticationMode?: "CONFIG_MAP" | "API_AND_CONFIG_MAP" | "API"
	// Set this value to false to avoid creating a default cluster admin Access Entry using the IAM principal used to create the cluster.
	BootstrapClusterCreatorAdminPermissions?: bool
}

#BlockStorage: {
	// Todo: add description
	Enabled?: bool
}

#ClusterLogging: {
	EnabledTypes?: #EnabledTypes
}

#ComputeConfig: {
	// Todo: add description
	Enabled?: bool
	// Todo: add description
	NodePools?: [...string]
	// Todo: add description
	NodeRoleArn?: string
}

#ControlPlanePlacement: {
	// The name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
	GroupName?: string
	// Optional parameter to specify the placement group spread level for control plane instances. If not provided, EKS will deploy control plane instances without a placement group.
	SpreadLevel?: string
}

#ControlPlaneScalingConfig: {
	// The scaling tier for the provisioned control plane.
	Tier?: "standard" | "tier-xl" | "tier-2xl" | "tier-4xl" | "tier-8xl" | "tier-ultra"
}

#ElasticLoadBalancing: {
	// Todo: add description
	Enabled?: bool
}

#EncryptionConfig: {
	// The encryption provider for the cluster.
	Provider?: #Provider
	// Specifies the resources to be encrypted. The only supported value is "secrets".
	Resources?: [...string]
}

#EtcdPlacement: {
	// Optional parameter to specify the placement group spread level for etcd instances. If not provided, EKS will deploy etcd instances without a placement group.
	SpreadLevel?: string
}

#KubernetesNetworkConfig: {
	// Todo: add description
	ElasticLoadBalancing?: #ElasticLoadBalancing
	// Ipv4 or Ipv6. You can only specify ipv6 for 1.21 and later clusters that use version 1.10.1 or later of the Amazon VPC CNI add-on
	IpFamily?: "ipv4" | "ipv6"
	// The CIDR block to assign Kubernetes service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC.
	ServiceIpv4Cidr?: string
	// The CIDR block to assign Kubernetes service IP addresses from.
	ServiceIpv6Cidr?: string
}

#Logging: {
	// The cluster control plane logging configuration for your cluster.
	ClusterLogging?: #ClusterLogging
}

#LoggingTypeConfig: {
	// name of the log type
	Type?: "api" | "audit" | "authenticator" | "controllerManager" | "scheduler"
}

#OutpostConfig: {
	// The EC2 instance type for the Kubernetes control plane instances of your local Amazon EKS cluster on AWS Outposts. This instance type applies to all control plane instances and cannot be changed after cluster creation.
	ControlPlaneInstanceType: string
	// An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on an AWS Outpost.
	ControlPlanePlacement?: #ControlPlanePlacement
	// The EC2 instance type for etcd instances of your local Amazon EKS cluster on AWS Outposts. This instance type applies to all etcd instances and cannot be changed after cluster creation.
	EtcdInstanceType?: string
	// An object representing the placement configuration for the etcd instances of your local Amazon EKS cluster on an AWS Outpost.
	EtcdPlacement?: #EtcdPlacement
	// The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. Only a single Outpost ARN is supported.
	OutpostArns: [...string]
}

#Provider: {
	// Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric, created in the same region as the cluster, and if the KMS key was created in a different account, the user must have access to the KMS key.
	KeyArn?: string
}

#RemoteNetworkConfig: {
	// Network configuration of nodes run on-premises with EKS Hybrid Nodes.
	RemoteNodeNetworks?: #RemoteNodeNetworks
	// Network configuration of pods run on-premises with EKS Hybrid Nodes.
	RemotePodNetworks?: #RemotePodNetworks
}

#RemoteNodeNetwork: {
	// Specifies the list of remote node CIDRs.
	Cidrs: [...string]
}

#RemotePodNetwork: {
	// Specifies the list of remote pod CIDRs.
	Cidrs: [...string]
}

#ResourcesVpcConfig: {
	// Specify the egress mode for the cluster control plane. If you set this to CUSTOMER_ROUTED, the control plane routes traffic through your VPC subnets instead of using AWS managed networking.
	ControlPlaneEgressMode?: string
	// Set this value to true to enable private access for your cluster's Kubernetes API server endpoint. If you enable private access, Kubernetes API requests from within your cluster's VPC use the private VPC endpoint. The default value for this parameter is false, which disables private access for your Kubernetes API server. If you disable private access and you have nodes or AWS Fargate pods in the cluster, then ensure that publicAccessCidrs includes the necessary CIDR blocks for communication with the nodes or Fargate pods.
	EndpointPrivateAccess?: bool
	// Set this value to false to disable public access to your cluster's Kubernetes API server endpoint. If you disable public access, your cluster's Kubernetes API server can only receive requests from within the cluster VPC. The default value for this parameter is true, which enables public access for your Kubernetes API server.
	EndpointPublicAccess?: bool
	// The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that you specify is denied. The default value is 0.0.0.0/0. If you've disabled private endpoint access and you have nodes or AWS Fargate pods in the cluster, then ensure that you specify the necessary CIDR blocks.
	PublicAccessCidrs?: [...string]
	// Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane. If you don't specify a security group, the default security group for your VPC is used.
	SecurityGroupIds?: [...string]
	// Specify subnets for your Amazon EKS nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your nodes and the Kubernetes control plane.
	SubnetIds: [...string]
}

#RollbackConfig: {
	// The timeout in minutes for the version rollback operation. If not specified, defaults to 720 minutes (12 hours).
	TimeoutMinutes?: int & >=120 & <=10080
}

#StorageConfig: {
	// Todo: add description
	BlockStorage?: #BlockStorage
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UpgradePolicy: {
	// Specify the support type for your cluster.
	SupportType?: "STANDARD" | "EXTENDED"
}

#ZonalShiftConfig: {
	// Set this value to true to enable zonal shift for the cluster.
	Enabled?: bool
}
