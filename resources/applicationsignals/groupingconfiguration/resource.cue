package groupingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApplicationSignals::GroupingConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApplicationSignals::GroupingConfiguration"
	Properties: #Properties
}
