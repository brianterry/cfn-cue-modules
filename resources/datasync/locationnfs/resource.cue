package locationnfs

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataSync::LocationNFS
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationNFS"
	Properties: #Properties
}
