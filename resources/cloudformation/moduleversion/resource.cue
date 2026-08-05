package moduleversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// A module that has been registered in the CloudFormation registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::ModuleVersion"
	Properties: #Properties
}
