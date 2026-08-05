package endpointgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GlobalAccelerator::EndpointGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GlobalAccelerator::EndpointGroup"
	Properties: #Properties
}
