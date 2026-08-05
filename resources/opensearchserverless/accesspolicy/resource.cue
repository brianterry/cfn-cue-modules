package accesspolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::AccessPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::AccessPolicy"
	Properties: #Properties
}
