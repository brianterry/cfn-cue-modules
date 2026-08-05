package lifecycleautomation

import "strings"

#Properties: {
	// The name of the Automation document to execute
	AutomationDocument: string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	AutomationParameters: #AutomationParameters
	// A unique identifier used for generating a unique logical ID for the custom resource
	ResourceKey: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Tags?: #TagsMap
}
