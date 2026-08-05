package policytemplate

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(150)
	Name?: string & =~"^[a-zA-Z0-9-/_]*$" & strings.MinRunes(0) & strings.MaxRunes(150)
	PolicyStoreId: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Statement: string & strings.MinRunes(1) & strings.MaxRunes(10000)
}
