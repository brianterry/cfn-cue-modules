// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: loggroup.#Resource & #Your_Systems_3

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#Your_Systems_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

