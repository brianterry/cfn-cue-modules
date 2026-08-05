package trigger

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Trigger
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Trigger"
	Properties: #Properties
}
