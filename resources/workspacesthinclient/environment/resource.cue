package environment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::WorkSpacesThinClient::Environment.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpacesThinClient::Environment"
	Properties: #Properties
}
