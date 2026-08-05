package user

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::User
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::User"
	Properties: #Properties
}
