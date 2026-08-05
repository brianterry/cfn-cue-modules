package portal

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	BrowserType: #BrowserType
	CreationDate: string
	PortalArn: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	PortalEndpoint: string & =~"^[a-zA-Z0-9]?((?!-)([A-Za-z0-9-]*[A-Za-z0-9])\\.)+[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(253)
	PortalStatus: #PortalStatus
	RendererType: #RendererType
	ServiceProviderSamlMetadata: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(204800)
	StatusReason: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(1024)
}
