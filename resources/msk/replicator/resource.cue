package replicator

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::Replicator
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::Replicator"
	Properties: #Properties
}
