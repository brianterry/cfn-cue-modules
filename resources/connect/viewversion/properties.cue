package viewversion

import "strings"

#Properties: {
	// The description for the view version.
	VersionDescription?: string & =~"^([\\p{L}\\p{N}_.:\\/=+\\-@,()']+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@,()']*)$" & strings.MinRunes(1) & strings.MaxRunes(4096)
	// The Amazon Resource Name (ARN) of the view for which a version is being created.
	ViewArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/view/[-:a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The view content hash to be checked.
	ViewContentSha256?: string & =~"^[a-zA-Z0-9]{64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
}
