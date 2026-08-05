package codesecurityintegration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Inspector CodeSecurityIntegration resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::InspectorV2::CodeSecurityIntegration"
	Properties: #Properties
}
