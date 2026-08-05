package topic

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::Topic
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::Topic"
	Properties: #Properties
}
