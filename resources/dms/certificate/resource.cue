package certificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DMS::Certificate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::Certificate"
	Properties: #Properties
}
