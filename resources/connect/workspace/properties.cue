package workspace

import "strings"

#Properties: {
	// The resource ARNs associated with the workspace
	Associations?: [...string & strings.MaxRunes(2048)]
	// The description of the workspace
	Description?: string & =~"^[\\P{C}\r\n\t]*$" & strings.MinRunes(0) & strings.MaxRunes(500)
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The media items for the workspace
	Media?: [...#MediaItem]
	// The name of the workspace.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The pages associated with the workspace
	Pages?: [...#WorkspacePage]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The theme configuration for the workspace
	Theme?: #WorkspaceTheme
	// The title of the workspace
	Title?: string & =~"^[\\P{C}]*$" & strings.MinRunes(0) & strings.MaxRunes(127)
	// The visibility of the workspace. Will always be set to ASSIGNED oninitial creation.
	Visibility?: #Visibility
}

#FontFamily: {
	Default?: #WorkspaceFontFamily
}

#MediaItem: {
	Source?: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(533333)
	Type: #MediaType
}

#PaletteCanvas: {
	ActiveBackground?: #ThemeString
	ContainerBackground?: #ThemeString
	PageBackground?: #ThemeString
}

#PaletteHeader: {
	Background?: #ThemeString
	InvertActionsColors?: bool
	Text?: #ThemeString
	TextHover?: #ThemeString
}

#PaletteNavigation: {
	Background?: #ThemeString
	InvertActionsColors?: bool
	Text?: #ThemeString
	TextActive?: #ThemeString
	TextBackgroundActive?: #ThemeString
	TextBackgroundHover?: #ThemeString
	TextHover?: #ThemeString
}

#PalettePrimary: {
	Active?: #ThemeString
	ContrastText?: #ThemeString
	Default?: #ThemeString
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WorkspacePage: {
	// The input data for the page.
	InputData?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	// The page identifier.
	Page: string & =~"^(?!\\.$)(?!\\.\\.$)[\\p{L}\\p{Z}\\p{N}\\-_.:=@'|]+$" & strings.MinRunes(1) & strings.MaxRunes(25)
	// The Amazon Resource Name (ARN) of the resource associated with the page.
	ResourceArn: string & strings.MaxRunes(2048)
	// The slug for the page.
	Slug?: string & =~"^$|^[\\p{L}\\p{Z}\\p{N}\\-_.:=@'|]{3,}$" & strings.MinRunes(0) & strings.MaxRunes(63)
}

#WorkspaceTheme: {
	Dark?: #WorkspaceThemeConfig
	Light?: #WorkspaceThemeConfig
}

#WorkspaceThemeConfig: {
	Palette?: #WorkspaceThemePalette
	Typography?: #WorkspaceThemeTypography
}

#WorkspaceThemePalette: {
	Canvas?: #PaletteCanvas
	Header?: #PaletteHeader
	Navigation?: #PaletteNavigation
	Primary?: #PalettePrimary
}

#WorkspaceThemeTypography: {
	FontFamily?: #FontFamily
}
