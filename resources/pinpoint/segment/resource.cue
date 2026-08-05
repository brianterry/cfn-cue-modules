package segment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::Segment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::Segment"
	Properties: #Properties
}
