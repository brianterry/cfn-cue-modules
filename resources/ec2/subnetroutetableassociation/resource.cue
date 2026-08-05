package subnetroutetableassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. A route table can be associated with multiple subnets. To create a route table, see [AWS::EC2::RouteTable](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routetable.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SubnetRouteTableAssociation"
	Properties: #Properties
}
