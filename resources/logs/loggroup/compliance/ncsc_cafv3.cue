// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: loggroup.#Resource & #C1_a Monitoring Coverage & #B3_c Stored Data

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#C1_a Monitoring Coverage: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#B3_c Stored Data: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

