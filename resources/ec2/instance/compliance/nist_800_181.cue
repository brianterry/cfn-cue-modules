// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: instance.#Resource & #T0154 & #T0017 & #T0144 & #T0144_2

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#T0154: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#T0017: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#T0144: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#T0144_2: {
	Properties: SubnetId: [_, ...]
	...
}

