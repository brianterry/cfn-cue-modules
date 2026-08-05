package eventbridgeruletemplategroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::EventBridgeRuleTemplateGroup Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::EventBridgeRuleTemplateGroup"
	Properties: #Properties
}
