package endpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DMS::Endpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::Endpoint"
	Properties: #Properties
}
