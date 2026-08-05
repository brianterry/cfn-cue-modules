package theme

import "strings"

#Properties: {
	AppId?: string
	EnvironmentName?: string
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Overrides?: [...#ThemeValues]
	Tags?: #Tags
	Values?: [...#ThemeValues]
}

#ThemeValue: {
	Children?: [...#ThemeValues]
	Value?: string
}

#ThemeValues: {
	Key?: string
	Value?: #ThemeValue
}
