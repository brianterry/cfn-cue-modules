// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: loggroup.#Resource & #CIS_6 & #CIS_13

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#CIS_6: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#CIS_13: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

