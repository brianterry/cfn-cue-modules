package storageprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::StorageProfile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::StorageProfile"
	Properties: #Properties
}
