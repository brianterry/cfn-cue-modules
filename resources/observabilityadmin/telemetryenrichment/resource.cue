package telemetryenrichment

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::ObservabilityAdmin::TelemetryEnrichment cloudformation resource enables the resource tags for telemetry feature in CloudWatch to enrich infrastructure metrics with AWS resource tags. For more details: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/resource-tags-for-telemetry.html
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ObservabilityAdmin::TelemetryEnrichment"
	Properties: #Properties
}
