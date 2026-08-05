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

#ColorTheme: "Light" | "Dark"

#CookieSpecification: {
	Domain: string & =~"^(\\.?)(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\\.)*[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$" & strings.MinRunes(0) & strings.MaxRunes(253)
	Name?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	Path?: string & =~"^/(\\S)*$" & strings.MinRunes(0) & strings.MaxRunes(2000)
}

#CookieSynchronizationConfiguration: {
	Allowlist: [...#CookieSpecification]
	Blocklist?: [...#CookieSpecification]
}

#EnabledType: "Disabled" | "Enabled"

#EncryptionContextMap: {...}

#ImageMetadata: {
	FileExtension: string & =~"^[\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(131072)
	LastUploadTimestamp: string
	MimeType: #MimeType
}

#Locale: "de-DE" | "en-US" | "es-ES" | "fr-FR" | "id-ID" | "it-IT" | "ja-JP" | "ko-KR" | "pt-BR" | "zh-CN" | "zh-TW"

#LocalizedBrandingStringMap: {...}

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

#MaxDisplayResolution: "size4096X2160" | "size3840X2160" | "size3440X1440" | "size2560X1440" | "size1920X1080" | "size1280X720" | "size1024X768" | "size800X600"

#MimeType: "image/png" | "image/jpeg" | "image/x-icon"

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

#ToolbarItem: "Windows" | "DualMonitor" | "FullScreen" | "Webcam" | "Microphone"

#ToolbarType: "Floating" | "Docked"

#VisualMode: "Dark" | "Light"
