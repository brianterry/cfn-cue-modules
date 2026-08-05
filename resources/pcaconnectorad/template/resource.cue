package template

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a template that defines certificate configurations, both for issuance and client handling
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCAConnectorAD::Template"
	Properties: #Properties
}
