// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: instance.#Resource & #CP_10 & #CA_7_a_b & #AC_3 & #AC_2_j & #AC_4

// Guard rule: EBS_OPTIMIZED_INSTANCE
#CP_10: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#CA_7_a_b: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#AC_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#AC_2_j: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#AC_4: {
	Properties: SubnetId: [_, ...]
	...
}

