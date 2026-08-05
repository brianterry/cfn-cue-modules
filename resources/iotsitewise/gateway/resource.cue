package gateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::Gateway
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::Gateway"
	Properties: #Properties
}
