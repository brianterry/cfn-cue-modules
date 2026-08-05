package routerinput

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a router input in AWS Elemental MediaConnect that is used to ingest content to be transmitted to router outputs
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::RouterInput"
	Properties: #Properties
}
