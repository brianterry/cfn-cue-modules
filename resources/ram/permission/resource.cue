package permission

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::RAM::Permission
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RAM::Permission"
	Properties: #Properties
}
