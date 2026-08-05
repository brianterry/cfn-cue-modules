package locationfsxwindows

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DataSync::LocationFSxWindows.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationFSxWindows"
	Properties: #Properties
}
