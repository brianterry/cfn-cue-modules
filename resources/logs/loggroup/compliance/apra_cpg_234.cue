// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: loggroup.#Resource & #36i & #52c

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#36i: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#52c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

