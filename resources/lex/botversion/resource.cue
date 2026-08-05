package botversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for bot versions, a numbered snapshot of your work that you can publish for use in different parts of your workflow, such as development, beta deployment, and production.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lex::BotVersion"
	Properties: #Properties
}
