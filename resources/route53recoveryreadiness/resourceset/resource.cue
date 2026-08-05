package resourceset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for the AWS Route53 Recovery Readiness ResourceSet Resource and API.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryReadiness::ResourceSet"
	Properties: #Properties
}
