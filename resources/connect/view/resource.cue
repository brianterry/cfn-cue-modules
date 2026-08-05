package view

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::View
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::View"
	Properties: #Properties
}
