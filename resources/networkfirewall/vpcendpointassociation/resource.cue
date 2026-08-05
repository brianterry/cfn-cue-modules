package vpcendpointassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::NetworkFirewall::VpcEndpointAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkFirewall::VpcEndpointAssociation"
	Properties: #Properties
}
