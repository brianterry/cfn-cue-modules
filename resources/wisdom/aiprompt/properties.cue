package aiprompt

import "strings"

#Properties: {
	ApiFormat: #AIPromptAPIFormat
	AssistantId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"
	Description?: string & =~"^[a-zA-Z0-9\\s_.,-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
	ModelId: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Name?: string & =~"^[a-zA-Z0-9\\s_.,-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: #Tags
	TemplateConfiguration: #AIPromptTemplateConfiguration
	TemplateType: #AIPromptTemplateType
	Type: #AIPromptType
}

#TextFullAIPromptEditTemplateConfiguration: {
	Text: string & strings.MinRunes(1) & strings.MaxRunes(200000)
}
