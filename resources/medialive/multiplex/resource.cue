package multiplex

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaLive::Multiplex
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::Multiplex"
	Properties: #Properties
}
