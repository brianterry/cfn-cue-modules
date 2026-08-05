package devendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::DevEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::DevEndpoint"
	Properties: #Properties
}
