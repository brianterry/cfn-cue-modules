package internetgateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Allocates an internet gateway for use with a VPC. After creating the Internet gateway, you then attach it to a VPC.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::InternetGateway"
	Properties: #Properties
}
