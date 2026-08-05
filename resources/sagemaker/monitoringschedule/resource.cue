package monitoringschedule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::MonitoringSchedule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::MonitoringSchedule"
	Properties: #Properties
}
