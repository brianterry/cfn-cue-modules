package viewversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::ViewVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::ViewVersion"
	Properties: #Properties
}
