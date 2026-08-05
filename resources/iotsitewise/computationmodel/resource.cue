package computationmodel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::ComputationModel.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::ComputationModel"
	Properties: #Properties
}
