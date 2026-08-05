package securitygroupvpcassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for the AWS::EC2::SecurityGroupVpcAssociation resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SecurityGroupVpcAssociation"
	Properties: #Properties
}
