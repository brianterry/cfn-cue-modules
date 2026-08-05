package projectmembership

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::DataZone::ProjectMembership Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::ProjectMembership"
	Properties: #Properties
}
