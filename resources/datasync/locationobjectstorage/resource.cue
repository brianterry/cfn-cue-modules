package locationobjectstorage

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DataSync::LocationObjectStorage.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationObjectStorage"
	Properties: #Properties
}
