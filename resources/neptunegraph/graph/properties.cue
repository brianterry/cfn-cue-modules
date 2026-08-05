package graph

import "strings"

#Properties: {
	// Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
	// _Default_: If not specified, the default value is true.
	DeletionProtection?: bool
	// Contains a user-supplied name for the Graph.
	// If you don't specify a name, we generate a unique Graph Name using a combination of Stack Name and a UUID comprising of 4 characters.
	// _Important_: If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
	GraphName?: string & =~"^[a-zA-z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The ARN of the KMS key used to encrypt data in the Neptune Analytics graph. If not specified, the graph is encrypted with an AWS managed key.
	KmsKeyIdentifier?: string & =~"arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// Memory for the Graph.
	ProvisionedMemory: int
	// Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.
	// When the Graph is publicly reachable, its Domain Name System (DNS) endpoint resolves to the public IP address from the internet.
	// When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
	// _Default_: If not specified, the default value is false.
	PublicConnectivity?: bool
	// Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.
	// Replica Count should always be less than or equal to 2.
	// _Default_: If not specified, the default value is 1.
	ReplicaCount?: int
	// The tags associated with this graph.
	Tags?: [...#Tag]
	// Vector Search Configuration
	VectorSearchConfiguration?: #VectorSearchConfiguration
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VectorSearchConfiguration: {
	// The vector search dimension
	VectorSearchDimension: int
}
