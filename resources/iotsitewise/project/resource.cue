package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::Project
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::Project"
	Properties: #Properties
}
