package resourcespecificlogging

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource-specific logging allows you to specify a logging level for a specific thing group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::ResourceSpecificLogging"
	Properties: #Properties
}
