package scheduledaudit

import "github.com/brianterry/cfn-cue-modules/cfn"

// Scheduled audits can be used to specify the checks you want to perform during an audit and how often the audit should be run.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::ScheduledAudit"
	Properties: #Properties
}
