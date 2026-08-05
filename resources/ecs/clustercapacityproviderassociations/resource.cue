package clustercapacityproviderassociations

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associate a set of ECS Capacity Providers with a specified ECS Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::ClusterCapacityProviderAssociations"
	Properties: #Properties
}
