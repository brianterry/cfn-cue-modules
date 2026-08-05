package healthcheck

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53::HealthCheck.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53::HealthCheck"
	Properties: #Properties
}
