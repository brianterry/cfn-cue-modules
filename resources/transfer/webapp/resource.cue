package webapp

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Transfer::WebApp
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::WebApp"
	Properties: #Properties
}
