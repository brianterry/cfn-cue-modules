package cell

import "github.com/brianterry/cfn-cue-modules/cfn"

// The API Schema for AWS Route53 Recovery Readiness Cells.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryReadiness::Cell"
	Properties: #Properties
}
