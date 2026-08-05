package serviceaction

import "strings"

#Properties: {
	AcceptLanguage?: "en" | "jp" | "zh"
	Definition: [...#DefinitionParameter]
	DefinitionType: "SSM_AUTOMATION"
	Description?: string & strings.MaxRunes(1024)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#DefinitionParameter: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	Value: string & strings.MaxRunes(4096)
}
