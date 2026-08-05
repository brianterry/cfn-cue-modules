// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: loggroup.#Resource & #REL_6

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#REL_6: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

