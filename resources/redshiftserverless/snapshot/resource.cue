package snapshot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RedshiftServerless::Snapshot Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RedshiftServerless::Snapshot"
	Properties: #Properties
}
