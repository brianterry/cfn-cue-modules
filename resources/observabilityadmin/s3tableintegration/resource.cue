package s3tableintegration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for a CloudWatch Observability Admin S3 Table Integration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ObservabilityAdmin::S3TableIntegration"
	Properties: #Properties
}
