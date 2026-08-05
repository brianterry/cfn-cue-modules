package cisscanconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// CIS Scan Configuration resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::InspectorV2::CisScanConfiguration"
	Properties: #Properties
}
