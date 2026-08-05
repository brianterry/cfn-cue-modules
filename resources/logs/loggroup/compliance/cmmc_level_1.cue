// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: loggroup.#Resource & #SC_1_175

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#SC_1_175: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

