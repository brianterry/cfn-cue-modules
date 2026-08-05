package segmentdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// A segment definition resource of Amazon Connect Customer Profiles
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::SegmentDefinition"
	Properties: #Properties
}
