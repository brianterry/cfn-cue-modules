package ippoolroutetableassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::IpPoolRouteTableAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::IpPoolRouteTableAssociation"
	Properties: #Properties
}
