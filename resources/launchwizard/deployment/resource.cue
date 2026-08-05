package deployment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::LaunchWizard::Deployment Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LaunchWizard::Deployment"
	Properties: #Properties
}
