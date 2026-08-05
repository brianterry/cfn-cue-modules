package snapshot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::FSx::Snapshot
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FSx::Snapshot"
	Properties: #Properties
}
