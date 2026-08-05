package deploymentgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::CodeDeploy::DeploymentGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeDeploy::DeploymentGroup"
	Properties: #Properties
}
