package routernetworkinterface

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a router network interface in AWS Elemental MediaConnect that is used to define a network boundary for router resources
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::RouterNetworkInterface"
	Properties: #Properties
}
