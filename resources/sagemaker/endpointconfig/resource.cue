package endpointconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::EndpointConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::EndpointConfig"
	Properties: #Properties
}
