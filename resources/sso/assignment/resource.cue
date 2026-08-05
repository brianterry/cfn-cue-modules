package assignment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for SSO assignmet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSO::Assignment"
	Properties: #Properties
}
