package legalhold

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a legal hold on recovery points (backups). A legal hold prevents backups from being deleted while under hold.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::LegalHold"
	Properties: #Properties
}
