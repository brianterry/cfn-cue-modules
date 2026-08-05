package integration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Integration from a source AWS service to a Redshift cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::Integration"
	Properties: #Properties
}
