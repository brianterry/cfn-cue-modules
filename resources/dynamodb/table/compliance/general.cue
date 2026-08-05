// general compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/table"

// #general enforces all general controls for this resource.
// Unify with #Resource: myResource: table.#Resource & compliance.#general & { ... }
#general: table.#Resource & #DYNAMODB_TABLE_MUST_BE_ENCRYPTED

// Guard rule: DYNAMODB_TABLE_MUST_BE_ENCRYPTED
#DYNAMODB_TABLE_MUST_BE_ENCRYPTED: {
	Properties: SSESpecification: _ & !=_|_
	Properties: SSESpecification: SSEEnabled: true
	...
}

