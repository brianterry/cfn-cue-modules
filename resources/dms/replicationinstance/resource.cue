package replicationinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DMS::ReplicationInstance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::ReplicationInstance"
	Properties: #Properties
}
