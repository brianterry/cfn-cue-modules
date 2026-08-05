package usersettings

import "strings"

#Properties: {
	AdditionalEncryptionContext?: #EncryptionContextMap
	CookieSynchronizationConfiguration?: #CookieSynchronizationConfiguration
	CopyAllowed: #EnabledType
	CustomerManagedKey?: string & =~"^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	DeepLinkAllowed?: #EnabledType
	DisconnectTimeoutInMinutes?: number & >=1 & <=600
	DownloadAllowed: #EnabledType
	IdleDisconnectTimeoutInMinutes?: number & >=0 & <=60
	PasteAllowed: #EnabledType
	PrintAllowed: #EnabledType
	Tags?: [...#Tag]
	ToolbarConfiguration?: #ToolbarConfiguration
	UploadAllowed: #EnabledType
	WebAuthnAllowed?: #EnabledType
}

#BrandingConfiguration: {
	ColorTheme?: #ColorTheme
	Favicon?: string & =~"(^s3://[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]/.+$)|(^(?=(.{4})*$)[A-Za-z0-9+/]*={0,2}$)"
	FaviconMetadata?: #ImageMetadata
	LocalizedStrings?: #LocalizedBrandingStringMap
	Logo?: string & =~"(^s3://[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]/.+$)|(^(?=(.{4})*$)[A-Za-z0-9+/]*={0,2}$)"
	LogoMetadata?: #ImageMetadata
	TermsOfService?: string & strings.MaxRunes(153600)
	Wallpaper?: string & =~"(^s3://[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]/.+$)|(^(?=(.{4})*$)[A-Za-z0-9+/]*={0,2}$)"
	WallpaperMetadata?: #ImageMetadata
}

#CookieSpecification: {
	Domain: string & =~"^(\\.?)(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\\.)*[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$" & strings.MinRunes(0) & strings.MaxRunes(253)
	Name?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	Path?: string & =~"^/(\\S)*$" & strings.MinRunes(0) & strings.MaxRunes(2000)
}

#CookieSynchronizationConfiguration: {
	Allowlist: [...#CookieSpecification]
	Blocklist?: [...#CookieSpecification]
}

#ImageMetadata: {
	FileExtension: string & =~"^[\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(131072)
	LastUploadTimestamp: string
	MimeType: #MimeType
}

#LocalizedBrandingStrings: {
	BrowserTabTitle: string & =~"^[^<>&'`~\\\\]*$"
	ContactButtonText?: string & =~"^[^<>&'`~\\\\]*$"
	ContactLink?: string & =~"^(https?://|mailto:).*"
	LoadingText?: string & =~"^[^<>&'`~\\\\]*$"
	LoginButtonText?: string & =~"^[^<>&'`~\\\\]*$"
	LoginDescription?: string & =~"^[^<>&'`~\\\\]*$"
	LoginTitle?: string & =~"^[^<>&'`~\\\\]*$"
	WelcomeText: string & =~"^[^<>&'`~\\\\]*$"
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#ToolbarConfiguration: {
	HiddenToolbarItems?: [...#ToolbarItem]
	MaxDisplayResolution?: #MaxDisplayResolution
	ToolbarType?: #ToolbarType
	VisualMode?: #VisualMode
}
