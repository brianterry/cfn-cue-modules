package distribution

import "github.com/brianterry/cfn-cue-modules/cfn"

// A distribution tells CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::Distribution"
	Properties: #Properties
}
