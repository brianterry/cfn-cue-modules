package originrequestpolicy

#Properties: {
	// The origin request policy configuration.
	OriginRequestPolicyConfig: #OriginRequestPolicyConfig
}

#CookiesConfig: {
	// Determines whether cookies in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:
  +  ``none`` – No cookies in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to ``none``, any cookies that are listed in a ``CachePolicy``*are* included in origin requests.
  +  ``whitelist`` – Only the cookies in viewer requests that are listed in the ``CookieNames`` type are included in requests that CloudFront sends to the origin.
  +  ``all`` – All cookies in viewer requests are included in requests that CloudFront sends to the origin.
  +  ``allExcept`` – All cookies in viewer requests are included in requests that CloudFront sends to the origin, *except* for those listed in the ``CookieNames`` type, which are not included.
	CookieBehavior: string & =~"^(none|whitelist|all|allExcept)$"
	// Contains a list of cookie names.
	Cookies?: [...string]
}

#HeadersConfig: {
	// Determines whether any HTTP headers are included in requests that CloudFront sends to the origin. Valid values are:
  +  ``none`` – No HTTP headers in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to ``none``, any headers that are listed in a ``CachePolicy``*are* included in origin requests.
  +  ``whitelist`` – Only the HTTP headers that are listed in the ``Headers`` type are included in requests that CloudFront sends to the origin.
  +  ``allViewer`` – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin.
  +  ``allViewerAndWhitelistCloudFront`` – All HTTP headers in viewer requests and the additional CloudFront headers that are listed in the ``Headers`` type are included in requests that CloudFront sends to the origin. The additional headers are added by CloudFront.
  +  ``allExcept`` – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin, *except* for those listed in the ``Headers`` type, which are not included.
	HeaderBehavior: string & =~"^(none|whitelist|allViewer|allViewerAndWhitelistCloudFront|allExcept)$"
	// Contains a list of HTTP header names.
	Headers?: [...string]
}

#OriginRequestPolicyConfig: {
	// A comment to describe the origin request policy. The comment cannot be longer than 128 characters.
	Comment?: string
	// The cookies from viewer requests to include in origin requests.
	CookiesConfig: #CookiesConfig
	// The HTTP headers to include in origin requests. These can include headers from viewer requests and additional headers added by CloudFront.
	HeadersConfig: #HeadersConfig
	// A unique name to identify the origin request policy.
	Name: string
	// The URL query strings from viewer requests to include in origin requests.
	QueryStringsConfig: #QueryStringsConfig
}

#QueryStringsConfig: {
	// Determines whether any URL query strings in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:
  +  ``none`` – No query strings in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to ``none``, any query strings that are listed in a ``CachePolicy``*are* included in origin requests.
  +  ``whitelist`` – Only the query strings in viewer requests that are listed in the ``QueryStringNames`` type are included in requests that CloudFront sends to the origin.
  +  ``all`` – All query strings in viewer requests are included in requests that CloudFront sends to the origin.
  +  ``allExcept`` – All query strings in viewer requests are included in requests that CloudFront sends to the origin, *except* for those listed in the ``QueryStringNames`` type, which are not included.
	QueryStringBehavior: string & =~"^(none|whitelist|all|allExcept)$"
	// Contains a list of query string names.
	QueryStrings?: [...string]
}
