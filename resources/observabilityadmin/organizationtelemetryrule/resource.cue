package organizationtelemetryrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ObservabilityAdmin::OrganizationTelemetryRule resource defines a CloudWatch Observability Admin Organization Telemetry Rule.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ObservabilityAdmin::OrganizationTelemetryRule"
	Properties: #Properties
}
