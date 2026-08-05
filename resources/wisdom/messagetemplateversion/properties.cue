package messagetemplateversion

import "strings"

#Properties: {
	// The unqualified Amazon Resource Name (ARN) of the message template.
	MessageTemplateArn: string & =~"^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?$"
	// The content SHA256 of the message template.
	MessageTemplateContentSha256?: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
