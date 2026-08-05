// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: instance.#Resource & #ctrl_2_9_2 & #ctrl_2_6 & #ctrl_2_5_5 & #ctrl_2_6_2

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#ctrl_2_9_2: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_2_6: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#ctrl_2_5_5: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_2_6_2: {
	Properties: SubnetId: [_, ...]
	...
}

