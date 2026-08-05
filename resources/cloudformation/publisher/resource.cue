package publisher

import "github.com/brianterry/cfn-cue-modules/cfn"

// Register as a publisher in the CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::Publisher"
	Properties: #Properties
}
