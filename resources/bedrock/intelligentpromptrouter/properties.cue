package intelligentpromptrouter

import "strings"

#Properties: {
	// Description of the Prompt Router.
	Description?: string & =~"^([0-9a-zA-Z:.][ _-]?)+$" & strings.MinRunes(1) & strings.MaxRunes(200)
	FallbackModel: #PromptRouterTargetModel
	// List of model configuration
	Models: [...#PromptRouterTargetModel]
	// Name of the Prompt Router.
	PromptRouterName: string & =~"^([0-9a-zA-Z][ _-]?)+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	RoutingCriteria: #RoutingCriteria
	// List of Tags
	Tags?: [...#Tag]
}

#PromptRouterTargetModel: {
	// Arn of underlying model which are added in the Prompt Router.
	ModelArn: string & =~"(^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/[a-z0-9-]{1,63}[.]{1}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2})|(^arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{0,20}):(|[0-9]{12}):(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#RoutingCriteria: {
	ResponseQualityDifference: number & >=0 & <=100
}

#Tag: {
	// Tag Key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag Value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
