// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#nerc & { ... }
#nerc: loggroup.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#CIP_011_3_R1_Part_1_2: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

