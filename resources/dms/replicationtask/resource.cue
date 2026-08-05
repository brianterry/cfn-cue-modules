package replicationtask

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DMS::ReplicationTask
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::ReplicationTask"
	Properties: #Properties
}
