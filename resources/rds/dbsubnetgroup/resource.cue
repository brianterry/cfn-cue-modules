package dbsubnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::RDS::DBSubnetGroup`` resource creates a database subnet group. Subnet groups must contain at least two subnets in two different Availability Zones in the same region. 
 For more information, see [Working with DB subnet groups](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Subnets) in the *Amazon RDS User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBSubnetGroup"
	Properties: #Properties
}
