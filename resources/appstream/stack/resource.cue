package stack

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::Stack
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::Stack"
	Properties: #Properties
}
