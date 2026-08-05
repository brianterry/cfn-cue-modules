package dbclusterparametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::RDS::DBClusterParameterGroup`` resource creates a new Amazon RDS DB cluster parameter group.
// For information about configuring parameters for Amazon Aurora DB clusters, see [Working with parameter groups](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_WorkingWithParamGroups.html) in the *Amazon Aurora User Guide*.
// If you apply a parameter group to a DB cluster, then its DB instances might need to reboot. This can result in an outage while the DB instances are rebooting.
// If you apply a change to parameter group associated with a stopped DB cluster, then the updated stack waits until the DB cluster is started.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBClusterParameterGroup"
	Properties: #Properties
}
