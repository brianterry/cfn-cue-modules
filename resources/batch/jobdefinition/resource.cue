package jobdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Batch::JobDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Batch::JobDefinition"
	Properties: #Properties
}
