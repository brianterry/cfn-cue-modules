package stack

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::CloudFormation::Stack resource nests a stack as a resource in a top-level template.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::Stack"
	Properties: #Properties
}
