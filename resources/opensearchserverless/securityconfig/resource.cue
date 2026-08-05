package securityconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::SecurityConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::SecurityConfig"
	Properties: #Properties
}
