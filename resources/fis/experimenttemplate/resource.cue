package experimenttemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::FIS::ExperimentTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FIS::ExperimentTemplate"
	Properties: #Properties
}
