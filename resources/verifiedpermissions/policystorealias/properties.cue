package policystorealias

import "strings"

#Properties: {
	AliasName: string & =~"^[a-zA-Z0-9-_/]*$" & strings.MinRunes(1) & strings.MaxRunes(150)
	PolicyStoreId: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
}
