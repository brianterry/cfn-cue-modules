package profile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Transfer::Profile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::Profile"
	Properties: #Properties
}
