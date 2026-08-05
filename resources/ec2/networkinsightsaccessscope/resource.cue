package networkinsightsaccessscope

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EC2::NetworkInsightsAccessScope
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkInsightsAccessScope"
	Properties: #Properties
}
