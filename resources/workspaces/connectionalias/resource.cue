package connectionalias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WorkSpaces::ConnectionAlias
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpaces::ConnectionAlias"
	Properties: #Properties
}
