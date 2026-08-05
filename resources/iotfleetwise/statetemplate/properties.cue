package statetemplate

import "strings"

#Properties: {
	DataExtraDimensions?: [...string & =~"^[a-zA-Z0-9_.]+$" & strings.MinRunes(1) & strings.MaxRunes(150)]
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	MetadataExtraDimensions?: [...string & =~"^[a-zA-Z0-9_.]+$" & strings.MinRunes(1) & strings.MaxRunes(150)]
	Name: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	SignalCatalogArn: string
	StateTemplateProperties: [...string & =~"^[a-zA-Z0-9_.]+$" & strings.MinRunes(1) & strings.MaxRunes(150)]
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Unit: {...}
