package securitykey

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::SecurityKey
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::SecurityKey"
	Properties: #Properties
}
