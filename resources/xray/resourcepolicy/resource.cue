package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// This schema provides construct and validation rules for AWS-XRay Resource Policy resource parameters.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::XRay::ResourcePolicy"
	Properties: #Properties
}
