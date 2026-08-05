package certificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Transfer::Certificate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::Certificate"
	Properties: #Properties
}
