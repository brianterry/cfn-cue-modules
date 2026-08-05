package apidestination

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Events::ApiDestination.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Events::ApiDestination"
	Properties: #Properties
}
