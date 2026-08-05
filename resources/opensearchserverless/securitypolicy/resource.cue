package securitypolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::SecurityPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::SecurityPolicy"
	Properties: #Properties
}
