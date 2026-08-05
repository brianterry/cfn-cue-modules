package scheduledquery

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new Scheduled Query that allows you to define a Logs Insights query that will run on a schedule and configure actions to take with the query results.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::ScheduledQuery"
	Properties: #Properties
}
