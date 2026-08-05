// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: instance.#Resource & #164_308_a_7_i & #164_312_b & #164_308_a_3_i & #164_308_a_3_i_2 & #164_308_a_3_i_3

// Guard rule: EBS_OPTIMIZED_INSTANCE
#164_308_a_7_i: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#164_312_b: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#164_308_a_3_i: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#164_308_a_3_i_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#164_308_a_3_i_3: {
	Properties: SubnetId: [_, ...]
	...
}

