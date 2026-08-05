package moduledefaultversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// A module that has been registered in the CloudFormation registry as the default version
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::ModuleDefaultVersion"
	Properties: #Properties
}
