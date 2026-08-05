// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: instance.#Resource & #B3_b Data in Transit & #B2_a Identity Verification_ Authentication_and Authorisation & #B3_b Data in Transit_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#B3_b Data in Transit: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#B2_a Identity Verification_ Authentication_and Authorisation: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#B3_b Data in Transit_2: {
	Properties: SubnetId: [_, ...]
	...
}

