package group

import "github.com/brianterry/cfn-cue-modules/cfn"

// This schema provides construct and validation rules for AWS-XRay Group resource parameters.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::XRay::Group"
	Properties: #Properties
}
