package usageprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// This creates a Resource of UsageProfile type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::UsageProfile"
	Properties: #Properties
}
