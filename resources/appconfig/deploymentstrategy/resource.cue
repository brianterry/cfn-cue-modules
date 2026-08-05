package deploymentstrategy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppConfig::DeploymentStrategy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppConfig::DeploymentStrategy"
	Properties: #Properties
}
