package responseplan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SSMIncidents::ResponsePlan
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMIncidents::ResponsePlan"
	Properties: #Properties
}
