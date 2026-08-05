package archive

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Events::Archive
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Events::Archive"
	Properties: #Properties
}
