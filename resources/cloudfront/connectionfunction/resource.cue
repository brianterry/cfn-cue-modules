package connectionfunction

import "github.com/brianterry/cfn-cue-modules/cfn"

// A connection function.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::ConnectionFunction"
	Properties: #Properties
}
