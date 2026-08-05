package networkacl

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a network ACL for your VPC.
 To add a network ACL entry, see [AWS::EC2::NetworkAclEntry](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkaclentry.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkAcl"
	Properties: #Properties
}
