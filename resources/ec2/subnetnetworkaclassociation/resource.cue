package subnetnetworkaclassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::SubnetNetworkAclAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SubnetNetworkAclAssociation"
	Properties: #Properties
}
