package servicelevelobjective

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApplicationSignals::ServiceLevelObjective
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApplicationSignals::ServiceLevelObjective"
	Properties: #Properties
}
