package permission

import "github.com/brianterry/cfn-cue-modules/cfn"

// Permission set on private certificate authority
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ACMPCA::Permission"
	Properties: #Properties
}
