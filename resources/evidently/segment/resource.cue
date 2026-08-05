package segment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Evidently::Segment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Evidently::Segment"
	Properties: #Properties
}
