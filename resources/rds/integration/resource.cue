package integration

import "github.com/brianterry/cfn-cue-modules/cfn"

// A zero-ETL integration with Amazon Redshift.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::Integration"
	Properties: #Properties
}
