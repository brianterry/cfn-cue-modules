package typeactivation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Enable a resource that has been published in the CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::TypeActivation"
	Properties: #Properties
}
