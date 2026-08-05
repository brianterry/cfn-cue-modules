package serviceactionassociation

import "strings"

#Properties: {
	ProductId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]{1,99}\\Z" & strings.MinRunes(1) & strings.MaxRunes(100)
	ProvisioningArtifactId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]{1,99}\\Z" & strings.MinRunes(1) & strings.MaxRunes(100)
	ServiceActionId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]{1,99}\\Z" & strings.MinRunes(1) & strings.MaxRunes(100)
}
