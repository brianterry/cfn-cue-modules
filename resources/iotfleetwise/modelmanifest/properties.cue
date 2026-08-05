package modelmanifest

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Name: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Nodes?: [...string]
	SignalCatalogArn: string
	Status?: #ManifestStatus
	Tags?: [...#Tag]
}

#ManifestStatus: "ACTIVE" | "DRAFT"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
