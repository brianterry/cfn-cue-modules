package dbparametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::RDS::DBParameterGroup`` resource creates a custom parameter group for an RDS database family.
 This type can be declared in a template and referenced in the ``DBParameterGroupName`` property of an ``AWS::RDS::DBInstance`` resource.
 For information about configuring parameters for Amazon RDS DB instances, see [Working with parameter groups](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithParamGroups.html) in the *Amazon RDS User Guide*.
 For information about configuring parameters for Amazon Aurora DB instances, see [Working with parameter groups](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_WorkingWithParamGroups.html) in the *Amazon Aurora User Guide*.
  Applying a parameter group to a DB instance may require the DB instance to reboot, resulting in a database outage for the duration of the reboot.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBParameterGroup"
	Properties: #Properties
}
