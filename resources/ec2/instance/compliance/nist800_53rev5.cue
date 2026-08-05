// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: instance.#Resource & #CP_2_5 & #AC_2_6 & #AC_3 & #AC_2_6_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#CP_2_5: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#AC_2_6: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#AC_3: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#AC_2_6_2: {
	Properties: SubnetId: [_, ...]
	...
}

