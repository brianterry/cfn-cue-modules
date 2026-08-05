package connection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Connections enables users to connect their DataZone resources (domains, projects, and environments) to external resources/services (data, compute, etc)
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::Connection"
	Properties: #Properties
}
