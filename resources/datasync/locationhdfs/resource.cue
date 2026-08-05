package locationhdfs

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DataSync::LocationHDFS.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationHDFS"
	Properties: #Properties
}
