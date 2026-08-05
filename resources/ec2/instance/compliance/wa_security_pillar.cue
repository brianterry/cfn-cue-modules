// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: instance.#Resource & #SEC_3_7 & #SEC_3_2 & #SEC_3_7_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#SEC_3_7: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#SEC_3_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#SEC_3_7_2: {
	Properties: SubnetId: [_, ...]
	...
}

