package asset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::Asset
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::Asset"
	Properties: #Properties
}
