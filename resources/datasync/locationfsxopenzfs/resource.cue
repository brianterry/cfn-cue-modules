package locationfsxopenzfs

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataSync::LocationFSxOpenZFS.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationFSxOpenZFS"
	Properties: #Properties
}
