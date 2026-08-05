// cis-aws-benchmark-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #cis_aws_benchmark_level_2 enforces all cis-aws-benchmark-level-2 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#cis_aws_benchmark_level_2 & { ... }
#cis_aws_benchmark_level_2: instance.#Resource & #1_18

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#1_18: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

