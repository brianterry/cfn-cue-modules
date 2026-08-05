package telemetrypipelines

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ObservabilityAdmin::TelemetryPipelines
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ObservabilityAdmin::TelemetryPipelines"
	Properties: #Properties
}
