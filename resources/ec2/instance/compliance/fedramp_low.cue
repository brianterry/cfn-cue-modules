// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: instance.#Resource & #CP_10 & #CA_7 & #AC_3 & #AC_2 & #AC_17

// Guard rule: EBS_OPTIMIZED_INSTANCE
#CP_10: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#CA_7: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#AC_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#AC_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#AC_17: {
	Properties: SubnetId: [_, ...]
	...
}

