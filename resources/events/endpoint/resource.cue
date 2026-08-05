package endpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Events::Endpoint.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Events::Endpoint"
	Properties: #Properties
}
