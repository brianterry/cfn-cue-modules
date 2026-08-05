package distributionconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::DistributionConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::DistributionConfiguration"
	Properties: #Properties
}
