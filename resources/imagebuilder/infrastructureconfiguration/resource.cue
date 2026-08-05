package infrastructureconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::InfrastructureConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::InfrastructureConfiguration"
	Properties: #Properties
}
