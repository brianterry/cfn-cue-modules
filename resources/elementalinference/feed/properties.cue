package feed

import "strings"

#Properties: {
	Name: string & =~"^[a-zA-Z0-9]([a-zA-Z0-9-_]{0,126}[a-zA-Z0-9])?$"
	Outputs: [...#GetOutput]
	Tags?: #TagMap
}

#AspectRatio: {
	Height: int
	Width: int
}

#ClippingConfig: {
	CallbackMetadata?: string & =~"^[\\w \\-\\.',@:;]*$" & strings.MaxRunes(1024)
}

#GetOutput: {
	Description?: string & =~"^[\\w \\-\\.',@:;]*$" & strings.MaxRunes(1024)
	Name: string & =~"^[a-zA-Z0-9]([a-zA-Z0-9-_]{0,126}[a-zA-Z0-9])?$"
	OutputConfig: #OutputConfig
	Status: #OutputStatus
}

#SubtitlingConfig: {
	AspectRatio?: #AspectRatio
	Dictionary?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(19)
	Language: #TranscriptionLanguage
	ProfanityFilter?: #ProfanityFilterMode
}
