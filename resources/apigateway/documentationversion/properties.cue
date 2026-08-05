package documentationversion

import "strings"

#Properties: {
	Description?: string
	DocumentationVersion: string & strings.MinRunes(1)
	RestApiId: string & strings.MinRunes(1)
}
