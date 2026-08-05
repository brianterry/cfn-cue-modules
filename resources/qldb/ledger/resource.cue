package ledger

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::QLDB::Ledger
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QLDB::Ledger"
	Properties: #Properties
}
