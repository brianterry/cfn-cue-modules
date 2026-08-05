// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: instance.#Resource & #section4b_design_and_secure_the_cloud_3_standard_workloads & #section4b_design_and_secure_the_cloud_1_standard_workloads & #section4b_design_and_secure_the_cloud_1_standard_workloads_2 & #section4b_design_and_secure_the_cloud_1_standard_workloads_3

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#section4b_design_and_secure_the_cloud_3_standard_workloads: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#section4b_design_and_secure_the_cloud_1_standard_workloads_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#section4b_design_and_secure_the_cloud_1_standard_workloads_3: {
	Properties: SubnetId: [_, ...]
	...
}

