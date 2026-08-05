package telemetryrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ObservabilityAdmin::TelemetryRule resource defines a CloudWatch Observability Admin Telemetry Rule.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ObservabilityAdmin::TelemetryRule"
	Properties: #Properties
}
