package portal

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::Portal
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::Portal"
	Properties: #Properties
}
