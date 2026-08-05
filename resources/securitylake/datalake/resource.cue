package datalake

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityLake::DataLake
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityLake::DataLake"
	Properties: #Properties
}
