package thing

import "strings"

#Properties: {
	AttributePayload?: #AttributePayload
	ThingName?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#AttributePayload: {
	Attributes?: {...}
}
