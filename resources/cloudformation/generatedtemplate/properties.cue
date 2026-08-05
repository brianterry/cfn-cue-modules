package generatedtemplate

import "strings"

#Properties: {
	// The name assigned to the generated template.
	GeneratedTemplateName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	TemplateConfiguration?: #TemplateConfiguration
}

#TemplateConfiguration: {
	// The DeletionPolicy assigned to resources in the generated template.
	DeletionPolicy?: "DELETE" | "RETAIN"
	// The UpdateReplacePolicy assigned to resources in the generated template.
	UpdateReplacePolicy?: "DELETE" | "RETAIN"
}

#TemplateProgress: {
	// The number of resources that failed the template generation.
	ResourcesFailed?: int
	// The number of resources that are still pending the template generation.
	ResourcesPending?: int
	// The number of resources that are in-process for the template generation.
	ResourcesProcessing?: int
	// The number of resources that succeeded the template generation.
	ResourcesSucceeded?: int
}
