package accesspolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::AccessPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::AccessPolicy"
	Properties: #Properties
}
