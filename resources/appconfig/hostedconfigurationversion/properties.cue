package hostedconfigurationversion

import "strings"

#Properties: {
	// The application ID.
	ApplicationId: string & =~"[a-z0-9]{4,7}"
	// The configuration profile ID.
	ConfigurationProfileId: string & =~"[a-z0-9]{4,7}"
	// The content of the configuration or the configuration data.
	Content: string
	// A standard MIME type describing the format of the configuration content.
	ContentType: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// A description of the hosted configuration version.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// An optional locking token used to prevent race conditions from overwriting configuration updates when creating a new version. To ensure your data is not overwritten when creating multiple hosted configuration versions in rapid succession, specify the version number of the latest hosted configuration version.
	LatestVersionNumber?: int
	// A user-defined label for an AWS AppConfig hosted configuration version.
	VersionLabel?: string & =~"^$|.*[^0-9].*" & strings.MinRunes(0) & strings.MaxRunes(64)
}
