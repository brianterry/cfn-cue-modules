package connector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a Connector that connects AWS PrivateCA and your directory
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCAConnectorAD::Connector"
	Properties: #Properties
}
