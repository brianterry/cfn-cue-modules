package deployment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a deployment resource of an AWS Mainframe Modernization (M2) application to a specified environment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::M2::Deployment"
	Properties: #Properties
}
