package replicationset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SSMIncidents::ReplicationSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMIncidents::ReplicationSet"
	Properties: #Properties
}
