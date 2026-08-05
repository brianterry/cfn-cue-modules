package networkinsightspath

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EC2::NetworkInsightsPath
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkInsightsPath"
	Properties: #Properties
}
