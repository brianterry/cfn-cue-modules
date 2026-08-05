package daemon

import "github.com/brianterry/cfn-cue-modules/cfn"

// Information about a daemon resource.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::Daemon"
	Properties: #Properties
}
