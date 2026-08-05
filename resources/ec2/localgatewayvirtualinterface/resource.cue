package localgatewayvirtualinterface

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Local Gateway Virtual Interface which describes a virtual interface for AWS Outposts local gateways.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::LocalGatewayVirtualInterface"
	Properties: #Properties
}
