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

#AIPromptAPIFormat: "ANTHROPIC_CLAUDE_MESSAGES" | "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS" | "MESSAGES" | "TEXT_COMPLETIONS"

#AIPromptTemplateConfiguration: {
	TextFullAIPromptEditTemplateConfiguration: #TextFullAIPromptEditTemplateConfiguration
}

#AIPromptTemplateType: "TEXT"

#AIPromptType: "ANSWER_GENERATION" | "INTENT_LABELING_GENERATION" | "QUERY_REFORMULATION" | "SELF_SERVICE_PRE_PROCESSING" | "SELF_SERVICE_ANSWER_GENERATION" | "EMAIL_RESPONSE" | "EMAIL_OVERVIEW" | "EMAIL_GENERATIVE_ANSWER" | "EMAIL_QUERY_REFORMULATION" | "ORCHESTRATION" | "NOTE_TAKING" | "CASE_SUMMARIZATION"

#Tags: {...}

#TextFullAIPromptEditTemplateConfiguration: {
	Text: string & strings.MinRunes(1) & strings.MaxRunes(200000)
}
