package scheduledquery

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Timestream::ScheduledQuery resource creates a Timestream Scheduled Query.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Timestream::ScheduledQuery"
	Properties: #Properties
}
