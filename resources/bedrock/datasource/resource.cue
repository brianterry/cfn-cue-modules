package datasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::DataSource Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::DataSource"
	Properties: #Properties
}
