package replicationsubnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DMS::ReplicationSubnetGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::ReplicationSubnetGroup"
	Properties: #Properties
}
