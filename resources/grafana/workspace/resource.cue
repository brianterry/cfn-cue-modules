package workspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Grafana::Workspace Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Grafana::Workspace"
	Properties: #Properties
}
