package codesecurityscanconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Inspector CodeSecurityScanConfiguration resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::InspectorV2::CodeSecurityScanConfiguration"
	Properties: #Properties
}
