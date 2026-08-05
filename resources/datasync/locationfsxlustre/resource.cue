package locationfsxlustre

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataSync::LocationFSxLustre.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationFSxLustre"
	Properties: #Properties
}
