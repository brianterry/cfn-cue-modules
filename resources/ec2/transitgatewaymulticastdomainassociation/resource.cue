package transitgatewaymulticastdomainassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::TransitGatewayMulticastDomainAssociation type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayMulticastDomainAssociation"
	Properties: #Properties
}
