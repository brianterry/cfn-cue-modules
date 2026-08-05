package samplingrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// This schema provides construct and validation rules for AWS-XRay SamplingRule resource parameters.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::XRay::SamplingRule"
	Properties: #Properties
}
