package reportplan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Contains detailed information about a report plan in AWS Backup Audit Manager.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::ReportPlan"
	Properties: #Properties
}
