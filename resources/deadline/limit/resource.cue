package limit

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::Limit
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::Limit"
	Properties: #Properties
}
