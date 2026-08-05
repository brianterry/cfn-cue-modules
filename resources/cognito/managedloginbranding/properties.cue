package managedloginbranding

#Properties: {
	Assets?: #AssetList
	ClientId?: string
	ReturnMergedResources?: bool
	Settings?: {...}
	UseCognitoProvidedValues?: bool
	UserPoolId: string
}

#AssetList: [...#AssetType]

#AssetType: {
	Bytes?: #BytesType
	Category: #CategoryType
	ColorMode: #ColorModeType
	Extension: #ExtensionType
	ResourceId?: #ResourceIdType
}

#BytesType: string & strings.MaxRunes(1000000)

#CategoryType: "FAVICON_ICO" | "FAVICON_SVG" | "EMAIL_GRAPHIC" | "SMS_GRAPHIC" | "AUTH_APP_GRAPHIC" | "PASSWORD_GRAPHIC" | "PASSKEY_GRAPHIC" | "PAGE_HEADER_LOGO" | "PAGE_HEADER_BACKGROUND" | "PAGE_FOOTER_LOGO" | "PAGE_FOOTER_BACKGROUND" | "PAGE_BACKGROUND" | "FORM_BACKGROUND" | "FORM_LOGO" | "IDP_BUTTON_ICON"

#ColorModeType: "LIGHT" | "DARK" | "DYNAMIC"

#ExtensionType: "ICO" | "JPEG" | "PNG" | "SVG" | "WEBP"

#ManagedLoginBrandingIdType: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[4][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"

#ResourceIdType: string & =~"^[\\w\\- ]+$" & strings.MinRunes(1) & strings.MaxRunes(40)
