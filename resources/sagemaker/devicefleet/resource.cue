package devicefleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SageMaker::DeviceFleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::DeviceFleet"
	Properties: #Properties
}
