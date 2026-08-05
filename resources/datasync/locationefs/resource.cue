package locationefs

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataSync::LocationEFS.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationEFS"
	Properties: #Properties
}
