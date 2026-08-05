package theme

import "strings"

#Properties: {
	AwsAccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	BaseThemeId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Configuration: #ThemeConfiguration
	Name: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Permissions?: [...#ResourcePermission]
	Tags?: [...#Tag]
	ThemeId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	VersionDescription?: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#BorderStyle: {
	// <p>The option to enable display of borders for visuals.</p>
	Show?: bool
}

#DataColorPalette: {
	// <p>The hexadecimal codes for the colors.</p>
	Colors?: [...string & =~"^#[A-F0-9]{6}$"]
	// <p>The hexadecimal code of a color that applies to charts where a lack of data is
	// highlighted.</p>
	EmptyFillColor?: string & =~"^#[A-F0-9]{6}$"
	// <p>The minimum and maximum hexadecimal codes that describe a color gradient. </p>
	MinMaxGradient?: [...string & =~"^#[A-F0-9]{6}$"]
}

#Font: {
	FontFamily?: string
}

#GutterStyle: {
	// <p>This Boolean value controls whether to display a gutter space between sheet tiles.
	// </p>
	Show?: bool
}

#MarginStyle: {
	// <p>This Boolean value controls whether to display sheet margins.</p>
	Show?: bool
}

#ResourcePermission: {
	// <p>The IAM action to grant or revoke permissions on.</p>
	Actions: [...string]
	// <p>The Amazon Resource Name (ARN) of the principal. This can be one of the
	// following:</p>
	// <ul>
	// <li>
	// <p>The ARN of an Amazon QuickSight user or group associated with a data source or dataset. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon QuickSight user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon Web Services account root: This is an IAM ARN rather than a QuickSight
	// ARN. Use this option only to share resources (templates) across Amazon Web Services accounts.
	// (This is less common.) </p>
	// </li>
	// </ul>
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#SheetStyle: {
	Tile?: #TileStyle
	TileLayout?: #TileLayoutStyle
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#ThemeConfiguration: {
	DataColorPalette?: #DataColorPalette
	Sheet?: #SheetStyle
	Typography?: #Typography
	UIColorPalette?: #UIColorPalette
}

#ThemeError: {
	// <p>The error message.</p>
	Message?: string & =~"\\S"
	Type?: #ThemeErrorType
}

#ThemeVersion: {
	// <p>The Amazon Resource Name (ARN) of the resource.</p>
	Arn?: string
	// <p>The Amazon QuickSight-defined ID of the theme that a custom theme inherits from. All
	// themes initially inherit from a default Amazon QuickSight theme.</p>
	BaseThemeId?: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Configuration?: #ThemeConfiguration
	// <p>The date and time that this theme version was created.</p>
	CreatedTime?: string
	// <p>The description of the theme.</p>
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// <p>Errors associated with the theme.</p>
	Errors?: [...#ThemeError]
	Status?: #ResourceStatus
	// <p>The version number of the theme.</p>
	VersionNumber?: number & >=1
}

#TileLayoutStyle: {
	Gutter?: #GutterStyle
	Margin?: #MarginStyle
}

#TileStyle: {
	Border?: #BorderStyle
}

#Typography: {
	FontFamilies?: [...#Font]
}

#UIColorPalette: {
	// <p>This color is that applies to selected states and buttons.</p>
	Accent?: string & =~"^#[A-F0-9]{6}$"
	// <p>The foreground color that applies to any text or other elements that appear over the
	// accent color.</p>
	AccentForeground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The color that applies to error messages.</p>
	Danger?: string & =~"^#[A-F0-9]{6}$"
	// <p>The foreground color that applies to any text or other elements that appear over the
	// error color.</p>
	DangerForeground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The color that applies to the names of fields that are identified as
	// dimensions.</p>
	Dimension?: string & =~"^#[A-F0-9]{6}$"
	// <p>The foreground color that applies to any text or other elements that appear over the
	// dimension color.</p>
	DimensionForeground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The color that applies to the names of fields that are identified as measures.</p>
	Measure?: string & =~"^#[A-F0-9]{6}$"
	// <p>The foreground color that applies to any text or other elements that appear over the
	// measure color.</p>
	MeasureForeground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The background color that applies to visuals and other high emphasis UI.</p>
	PrimaryBackground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The color of text and other foreground elements that appear over the primary
	// background regions, such as grid lines, borders, table banding, icons, and so on.</p>
	PrimaryForeground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The background color that applies to the sheet background and sheet controls.</p>
	SecondaryBackground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The foreground color that applies to any sheet title, sheet control text, or UI that
	// appears over the secondary background.</p>
	SecondaryForeground?: string & =~"^#[A-F0-9]{6}$"
	// <p>The color that applies to success messages, for example the check mark for a
	// successful download.</p>
	Success?: string & =~"^#[A-F0-9]{6}$"
	// <p>The foreground color that applies to any text or other elements that appear over the
	// success color.</p>
	SuccessForeground?: string & =~"^#[A-F0-9]{6}$"
	// <p>This color that applies to warning and informational messages.</p>
	Warning?: string & =~"^#[A-F0-9]{6}$"
	// <p>The foreground color that applies to any text or other elements that appear over the
	// warning color.</p>
	WarningForeground?: string & =~"^#[A-F0-9]{6}$"
}
