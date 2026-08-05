package replicakey

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::KMS::ReplicaKey resource specifies a multi-region replica AWS KMS key in AWS Key Management Service (AWS KMS).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KMS::ReplicaKey"
	Properties: #Properties
}
