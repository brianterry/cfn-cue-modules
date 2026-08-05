// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: instance.#Resource & #2_9_2 & #2_6 & #2_5_5 & #2_6_2

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#2_9_2: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#2_6: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#2_5_5: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#2_6_2: {
	Properties: SubnetId: [_, ...]
	...
}

