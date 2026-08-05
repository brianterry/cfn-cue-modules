package logalarm

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudWatch::LogAlarm. A LogAlarm evaluates scheduled query results from CloudWatch Logs and triggers actions when thresholds are breached.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::LogAlarm"
	Properties: #Properties
}
