package locations3

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataSync::LocationS3
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationS3"
	Properties: #Properties
}
