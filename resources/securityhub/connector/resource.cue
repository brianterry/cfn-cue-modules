package connector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a connector to a third-party cloud provider in Security Hub CSPM. A connector establishes a connection between Security Hub CSPM and a third-party cloud provider, enabling Security Hub CSPM to ingest security findings and resource data from the connected environment.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::Connector"
	Properties: #Properties
}
