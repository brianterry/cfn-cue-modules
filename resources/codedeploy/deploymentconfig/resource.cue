package deploymentconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeDeploy::DeploymentConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeDeploy::DeploymentConfig"
	Properties: #Properties
}
