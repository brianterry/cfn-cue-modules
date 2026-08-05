package generatedtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a generated template from existing resources using the CloudFormation IaC Generator.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::GeneratedTemplate"
	Properties: #Properties
}
