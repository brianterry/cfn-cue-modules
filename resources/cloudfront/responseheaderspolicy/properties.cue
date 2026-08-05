package responseheaderspolicy

#Properties: {
	// A response headers policy configuration.
	ResponseHeadersPolicyConfig: #ResponseHeadersPolicyConfig
}

#AccessControlAllowHeaders: {
	// The list of HTTP header names. You can specify ``*`` to allow all headers.
	Items: [...string]
}

#AccessControlAllowMethods: {
	// The list of HTTP methods. Valid values are:
  +   ``GET`` 
  +   ``DELETE`` 
  +   ``HEAD`` 
  +   ``OPTIONS`` 
  +   ``PATCH`` 
  +   ``POST`` 
  +   ``PUT`` 
  +   ``ALL`` 
  
 ``ALL`` is a special value that includes all of the listed HTTP methods.
	Items: [...string]
}

#AccessControlAllowOrigins: {
	// The list of origins (domain names). You can specify ``*`` to allow all origins.
	Items: [...string]
}

#AccessControlExposeHeaders: {
	// The list of HTTP headers. You can specify ``*`` to expose all headers.
	Items: [...string]
}

#ContentSecurityPolicy: {
	// The policy directives and their values that CloudFront includes as values for the ``Content-Security-Policy`` HTTP response header.
 For more information about the ``Content-Security-Policy`` HTTP response header, see [Content-Security-Policy](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy) in the MDN Web Docs.
	ContentSecurityPolicy: string
	// A Boolean that determines whether CloudFront overrides the ``Content-Security-Policy`` HTTP response header received from the origin with the one specified in this response headers policy.
	Override: bool
}

#ContentTypeOptions: {
	// A Boolean that determines whether CloudFront overrides the ``X-Content-Type-Options`` HTTP response header received from the origin with the one specified in this response headers policy.
	Override: bool
}

#CorsConfig: {
	// A Boolean that CloudFront uses as the value for the ``Access-Control-Allow-Credentials`` HTTP response header.
 For more information about the ``Access-Control-Allow-Credentials`` HTTP response header, see [Access-Control-Allow-Credentials](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials) in the MDN Web Docs.
	AccessControlAllowCredentials: bool
	// A list of HTTP header names that CloudFront includes as values for the ``Access-Control-Allow-Headers`` HTTP response header.
 For more information about the ``Access-Control-Allow-Headers`` HTTP response header, see [Access-Control-Allow-Headers](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers) in the MDN Web Docs.
	AccessControlAllowHeaders: #AccessControlAllowHeaders
	// A list of HTTP methods that CloudFront includes as values for the ``Access-Control-Allow-Methods`` HTTP response header.
 For more information about the ``Access-Control-Allow-Methods`` HTTP response header, see [Access-Control-Allow-Methods](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods) in the MDN Web Docs.
	AccessControlAllowMethods: #AccessControlAllowMethods
	// A list of origins (domain names) that CloudFront can use as the value for the ``Access-Control-Allow-Origin`` HTTP response header.
 For more information about the ``Access-Control-Allow-Origin`` HTTP response header, see [Access-Control-Allow-Origin](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin) in the MDN Web Docs.
	AccessControlAllowOrigins: #AccessControlAllowOrigins
	// A list of HTTP headers that CloudFront includes as values for the ``Access-Control-Expose-Headers`` HTTP response header.
 For more information about the ``Access-Control-Expose-Headers`` HTTP response header, see [Access-Control-Expose-Headers](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers) in the MDN Web Docs.
	AccessControlExposeHeaders?: #AccessControlExposeHeaders
	// A number that CloudFront uses as the value for the ``Access-Control-Max-Age`` HTTP response header.
 For more information about the ``Access-Control-Max-Age`` HTTP response header, see [Access-Control-Max-Age](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age) in the MDN Web Docs.
	AccessControlMaxAgeSec?: int
	// A Boolean that determines whether CloudFront overrides HTTP response headers received from the origin with the ones specified in this response headers policy.
	OriginOverride: bool
}

#CustomHeader: {
	// The HTTP response header name.
	Header: string
	// A Boolean that determines whether CloudFront overrides a response header with the same name received from the origin with the header specified here.
	Override: bool
	// The value for the HTTP response header.
	Value: string
}

#CustomHeadersConfig: {
	// The list of HTTP response headers and their values.
	Items: [...#CustomHeader]
}

#FrameOptions: {
	// The value of the ``X-Frame-Options`` HTTP response header. Valid values are ``DENY`` and ``SAMEORIGIN``.
 For more information about these values, see [X-Frame-Options](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options) in the MDN Web Docs.
	FrameOption: string & =~"^(DENY|SAMEORIGIN)$"
	// A Boolean that determines whether CloudFront overrides the ``X-Frame-Options`` HTTP response header received from the origin with the one specified in this response headers policy.
	Override: bool
}

#ReferrerPolicy: {
	// A Boolean that determines whether CloudFront overrides the ``Referrer-Policy`` HTTP response header received from the origin with the one specified in this response headers policy.
	Override: bool
	// Determines whether CloudFront includes the ``Referrer-Policy`` HTTP response header and the header's value.
 For more information about the ``Referrer-Policy`` HTTP response header, see [Referrer-Policy](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy) in the MDN Web Docs.
	ReferrerPolicy: string & =~"^(no-referrer|no-referrer-when-downgrade|origin|origin-when-cross-origin|same-origin|strict-origin|strict-origin-when-cross-origin|unsafe-url)$"
}

#RemoveHeader: {
	// The HTTP header name.
	Header: string
}

#RemoveHeadersConfig: {
	// The list of HTTP header names.
	Items: [...#RemoveHeader]
}

#ResponseHeadersPolicyConfig: {
	// A comment to describe the response headers policy.
 The comment cannot be longer than 128 characters.
	Comment?: string
	// A configuration for a set of HTTP response headers that are used for cross-origin resource sharing (CORS).
	CorsConfig?: #CorsConfig
	// A configuration for a set of custom HTTP response headers.
	CustomHeadersConfig?: #CustomHeadersConfig
	// A name to identify the response headers policy.
 The name must be unique for response headers policies in this AWS-account.
	Name: string
	// A configuration for a set of HTTP headers to remove from the HTTP response.
	RemoveHeadersConfig?: #RemoveHeadersConfig
	// A configuration for a set of security-related HTTP response headers.
	SecurityHeadersConfig?: #SecurityHeadersConfig
	// A configuration for enabling the ``Server-Timing`` header in HTTP responses sent from CloudFront.
	ServerTimingHeadersConfig?: #ServerTimingHeadersConfig
}

#SecurityHeadersConfig: {
	// The policy directives and their values that CloudFront includes as values for the ``Content-Security-Policy`` HTTP response header.
 For more information about the ``Content-Security-Policy`` HTTP response header, see [Content-Security-Policy](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy) in the MDN Web Docs.
	ContentSecurityPolicy?: #ContentSecurityPolicy
	// Determines whether CloudFront includes the ``X-Content-Type-Options`` HTTP response header with its value set to ``nosniff``.
 For more information about the ``X-Content-Type-Options`` HTTP response header, see [X-Content-Type-Options](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options) in the MDN Web Docs.
	ContentTypeOptions?: #ContentTypeOptions
	// Determines whether CloudFront includes the ``X-Frame-Options`` HTTP response header and the header's value.
 For more information about the ``X-Frame-Options`` HTTP response header, see [X-Frame-Options](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options) in the MDN Web Docs.
	FrameOptions?: #FrameOptions
	// Determines whether CloudFront includes the ``Referrer-Policy`` HTTP response header and the header's value.
 For more information about the ``Referrer-Policy`` HTTP response header, see [Referrer-Policy](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy) in the MDN Web Docs.
	ReferrerPolicy?: #ReferrerPolicy
	// Determines whether CloudFront includes the ``Strict-Transport-Security`` HTTP response header and the header's value.
 For more information about the ``Strict-Transport-Security`` HTTP response header, see [Security headers](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/understanding-response-headers-policies.html#understanding-response-headers-policies-security) in the *Amazon CloudFront Developer Guide* and [Strict-Transport-Security](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security) in the MDN Web Docs.
	StrictTransportSecurity?: #StrictTransportSecurity
	// Determines whether CloudFront includes the ``X-XSS-Protection`` HTTP response header and the header's value.
 For more information about the ``X-XSS-Protection`` HTTP response header, see [X-XSS-Protection](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection) in the MDN Web Docs.
	XSSProtection?: #XSSProtection
}

#ServerTimingHeadersConfig: {
	// A Boolean that determines whether CloudFront adds the ``Server-Timing`` header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.
	Enabled: bool
	// A number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the ``Server-Timing`` header to. When you set the sampling rate to 100, CloudFront adds the ``Server-Timing`` header to the HTTP response for every request that matches the cache behavior that this response headers policy is attached to. When you set it to 50, CloudFront adds the header to 50% of the responses for requests that match the cache behavior. You can set the sampling rate to any number 0–100 with up to four decimal places.
	SamplingRate?: number & >=0 & <=100
}

#StrictTransportSecurity: {
	// A number that CloudFront uses as the value for the ``max-age`` directive in the ``Strict-Transport-Security`` HTTP response header.
	AccessControlMaxAgeSec: int
	// A Boolean that determines whether CloudFront includes the ``includeSubDomains`` directive in the ``Strict-Transport-Security`` HTTP response header.
	IncludeSubdomains?: bool
	// A Boolean that determines whether CloudFront overrides the ``Strict-Transport-Security`` HTTP response header received from the origin with the one specified in this response headers policy.
	Override: bool
	// A Boolean that determines whether CloudFront includes the ``preload`` directive in the ``Strict-Transport-Security`` HTTP response header.
	Preload?: bool
}

#XSSProtection: {
	// A Boolean that determines whether CloudFront includes the ``mode=block`` directive in the ``X-XSS-Protection`` header.
 For more information about this directive, see [X-XSS-Protection](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection) in the MDN Web Docs.
	ModeBlock?: bool
	// A Boolean that determines whether CloudFront overrides the ``X-XSS-Protection`` HTTP response header received from the origin with the one specified in this response headers policy.
	Override: bool
	// A Boolean that determines the value of the ``X-XSS-Protection`` HTTP response header. When this setting is ``true``, the value of the ``X-XSS-Protection`` header is ``1``. When this setting is ``false``, the value of the ``X-XSS-Protection`` header is ``0``.
 For more information about these settings, see [X-XSS-Protection](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection) in the MDN Web Docs.
	Protection: bool
	// A reporting URI, which CloudFront uses as the value of the ``report`` directive in the ``X-XSS-Protection`` header.
 You cannot specify a ``ReportUri`` when ``ModeBlock`` is ``true``.
 For more information about using a reporting URL, see [X-XSS-Protection](https://docs.aws.amazon.com/https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection) in the MDN Web Docs.
	ReportUri?: string
}
