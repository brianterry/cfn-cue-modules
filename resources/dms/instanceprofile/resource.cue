package instanceprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DMS::InstanceProfile.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::InstanceProfile"
	Properties: #Properties
}
