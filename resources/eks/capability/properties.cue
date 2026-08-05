package capability

import "strings"

#Properties: {
	// A unique name for the capability. The name must be unique within your cluster and can contain alphanumeric characters, hyphens, and underscores.
	CapabilityName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The name of the EKS cluster where you want to create the capability.
	ClusterName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// Specifies how Kubernetes resources managed by the capability should be handled when the capability is deleted. Currently, the only supported value is RETAIN which retains all Kubernetes resources managed by the capability when the capability is deleted.
	DeletePropagationPolicy: "RETAIN"
	// The Amazon Resource Name (ARN) of the IAM role that the capability uses to interact with AWS services. This role must have a trust policy that allows the EKS service principal to assume it, and it must have the necessary permissions for the capability type you're creating.
	RoleArn: string & =~"^arn:aws[a-z-]*:iam::[0-9]+:role/[a-zA-Z0-9+=,.@_-]+$"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The type of capability to create. Valid values are: ACK (AWS Controllers for Kubernetes, which lets you manage AWS resources directly from Kubernetes), ARGOCD (Argo CD for GitOps-based continuous delivery), or KRO (Kube Resource Orchestrator for composing and managing custom Kubernetes resources).
	Type: "ARGOCD" | "ACK" | "KRO"
}

#ArgoCd: {
	AwsIdc: #AwsIdc
	// The Kubernetes namespace where Argo CD resources will be created. If not specified, the default namespace is used.
	Namespace?: string
	NetworkAccess?: #NetworkAccess
	// A list of role mappings that define which IAM Identity Center users or groups have which Argo CD roles. Each mapping associates an Argo CD role (ADMIN, EDITOR, or VIEWER) with one or more IAM Identity Center identities.
	RbacRoleMappings?: [...#ArgoCdRoleMapping]
	// The URL of the Argo CD server. Use this URL to access the Argo CD web interface and API.
	ServerUrl?: string
}

#ArgoCdRoleMapping: {
	// A list of IAM Identity Center identities (users or groups) that should be assigned this Argo CD role.
	Identities: [...#SsoIdentity]
	// The Argo CD role to assign. Valid values are: ADMIN (full administrative access to Argo CD), EDITOR (edit access to Argo CD resources), or VIEWER (read-only access to Argo CD resources).
	Role: "ADMIN" | "EDITOR" | "VIEWER"
}

#AwsIdc: {
	// The ARN of the IAM Identity Center instance to use for authentication.
	IdcInstanceArn: string
	// The ARN of the managed application created in IAM Identity Center for this Argo CD capability. This application is automatically created and managed by EKS.
	IdcManagedApplicationArn?: string
	// The Region where your IAM Identity Center instance is located.
	IdcRegion?: string
}

#CapabilityConfiguration: {
	ArgoCd?: #ArgoCd
}

#NetworkAccess: {
	// A list of VPC endpoint IDs to associate with the managed Argo CD API server endpoint. Each VPC endpoint provides private connectivity from a specific VPC to the Argo CD server. You can specify multiple VPC endpoint IDs to enable access from multiple VPCs.
	VpceIds?: [...string]
}

#SsoIdentity: {
	// The unique identifier of the IAM Identity Center user or group.
	Id: string
	// The type of identity. Valid values are SSO_USER or SSO_GROUP.
	Type: "SSO_USER" | "SSO_GROUP"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
