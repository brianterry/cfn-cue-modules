package route

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a route in a route table. For more information, see [Routes](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html#route-table-routes) in the *Amazon VPC User Guide*.
// You must specify either a destination CIDR block or prefix list ID. You must also specify exactly one of the resources as the target.
// If you create a route that references a transit gateway in the same template where you create the transit gateway, you must declare a dependency on the transit gateway attachment. The route table cannot use the transit gateway until it has successfully attached to the VPC. Add a [DependsOn Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html) in the ``AWS::EC2::Route`` resource to explicitly declare a dependency on the ``AWS::EC2::TransitGatewayAttachment`` resource.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::Route"
	Properties: #Properties
}
