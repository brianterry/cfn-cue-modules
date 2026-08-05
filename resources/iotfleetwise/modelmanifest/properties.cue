package modelmanifest

import "strings"

#Properties: {
	Description?: string & =~"^[^\\u0000-\\u001F\\u007F]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Name: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Nodes?: [...string]
	SignalCatalogArn: string
	Status?: #ManifestStatus
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
