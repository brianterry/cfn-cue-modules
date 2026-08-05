// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: loggroup.#Resource & #3_14_2e

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#3_14_2e: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

