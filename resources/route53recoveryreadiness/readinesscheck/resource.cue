package readinesscheck

import "github.com/brianterry/cfn-cue-modules/cfn"

// Aws Route53 Recovery Readiness Check Schema and API specification.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryReadiness::ReadinessCheck"
	Properties: #Properties
}
