package routetable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.
 For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the *Amazon VPC User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::RouteTable"
	Properties: #Properties
}
