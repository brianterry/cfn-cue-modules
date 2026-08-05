package user

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::User
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::User"
	Properties: #Properties
}
