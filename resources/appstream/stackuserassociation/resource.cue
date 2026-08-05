package stackuserassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::StackUserAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::StackUserAssociation"
	Properties: #Properties
}
