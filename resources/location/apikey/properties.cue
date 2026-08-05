package apikey

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	ExpireTime?: #iso8601UTC
	ForceDelete?: bool
	ForceUpdate?: bool
	KeyName: string & =~"^[-._\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	NoExpiry?: bool
	Restrictions: #ApiKeyRestrictions
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AndroidApp: {
	CertificateFingerprint: string & =~"^([A-Fa-f0-9]{2}:){19}[A-Fa-f0-9]{2}$" & strings.MinRunes(59) & strings.MaxRunes(59)
	Package: string & =~"^([A-Za-z][A-Za-z\\d_]*\\.)+[A-Za-z][A-Za-z\\d_]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#ApiKeyRestrictions: {
	AllowActions: [...string & =~"^(geo|geo-routes|geo-places|geo-maps):\\w*\\*?$" & strings.MinRunes(5) & strings.MaxRunes(200)]
	AllowAndroidApps?: [...#AndroidApp]
	AllowAppleApps?: [...#AppleApp]
	AllowReferers?: [...string & strings.MaxRunes(253)]
	AllowResources: [...string & =~"(^arn(:[a-z0-9]+([.-][a-z0-9]+)*):geo(:([a-z0-9]+([.-][a-z0-9]+)*))(:[0-9]+):((\\*)|([-a-z]+[/][*-._\\w]+))$)|(^arn(:[a-z0-9]+([.-][a-z0-9]+)*):(geo-routes|geo-places|geo-maps)(:((\\*)|([a-z0-9]+([.-][a-z0-9]+)*)))::((provider[\\/][*-._\\w]+))$)" & strings.MaxRunes(1600)]
}

#AppleApp: {
	BundleId: string & =~"^[A-Za-z0-9\\-]+(\\.[A-Za-z0-9\\-]+)+$" & strings.MinRunes(1) & strings.MaxRunes(155)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^[A-Za-z0-9 _=@:.+-/]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagMap: {...}

#iso8601UTC: string & =~"^([0-2]\\d{3})-(0[0-9]|1[0-2])-([0-2]\\d|3[01])T([01]\\d|2[0-4]):([0-5]\\d):([0-6]\\d)((\\.\\d{3})?)Z$"
