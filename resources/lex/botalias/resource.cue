package botalias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for a Bot Alias, which enables you to change the version of a bot without updating applications that use the bot
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lex::BotAlias"
	Properties: #Properties
}
