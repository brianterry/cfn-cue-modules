package transitgatewayattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::TransitGatewayAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayAttachment"
	Properties: #Properties
}
