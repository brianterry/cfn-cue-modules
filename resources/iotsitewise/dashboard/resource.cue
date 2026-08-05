package dashboard

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::Dashboard
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::Dashboard"
	Properties: #Properties
}
