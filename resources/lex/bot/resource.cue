package bot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for an Amazon Lex conversational bot performing automated tasks such as ordering a pizza, booking a hotel, and so on.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lex::Bot"
	Properties: #Properties
}
