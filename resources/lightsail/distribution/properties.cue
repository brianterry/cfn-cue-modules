package distribution

import "strings"

#Properties: {
	// The bundle ID to use for the distribution.
	BundleId: string
	// An object that describes the cache behavior settings for the distribution.
	CacheBehaviorSettings?: #CacheSettings
	// An array of objects that describe the per-path cache behavior for the distribution.
	CacheBehaviors?: [...#CacheBehaviorPerPath]
	// The certificate attached to the Distribution.
	CertificateName?: string
	// An object that describes the default cache behavior for the distribution.
	DefaultCacheBehavior: #CacheBehavior
	// The name for the distribution.
	DistributionName: string & =~"\\w[\\w\\-]*\\w"
	// The IP address type for the distribution.
	IpAddressType?: string
	// Indicates whether the distribution is enabled.
	IsEnabled?: bool
	// An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer.
	Origin: #InputOrigin
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CacheBehavior: {
	// The cache behavior of the distribution.
	Behavior?: string
}

#CacheBehaviorPerPath: {
	// The cache behavior for the specified path.
	Behavior?: string
	// The path to a directory or file to cached, or not cache. Use an asterisk symbol to specify wildcard directories (path/to/assets/*), and file types (*.html, *jpg, *js). Directories and file paths are case-sensitive.
	Path?: string
}

#CacheSettings: {
	// The HTTP methods that are processed and forwarded to the distribution's origin.
	AllowedHTTPMethods?: string
	// The HTTP method responses that are cached by your distribution.
	CachedHTTPMethods?: string
	// The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.
	DefaultTTL?: int
	// An object that describes the cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded.
	ForwardedCookies?: #CookieObject
	// An object that describes the headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded.
	ForwardedHeaders?: #HeaderObject
	// An object that describes the query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded.
	ForwardedQueryStrings?: #QueryStringObject
	// The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
	MaximumTTL?: int
	// The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
	MinimumTTL?: int
}

#CookieObject: {
	// The specific cookies to forward to your distribution's origin.
	CookiesAllowList?: [...string]
	// Specifies which cookies to forward to the distribution's origin for a cache behavior: all, none, or allow-list to forward only the cookies specified in the cookiesAllowList parameter.
	Option?: string
}

#HeaderObject: {
	// The specific headers to forward to your distribution's origin.
	HeadersAllowList?: [...string]
	// The headers that you want your distribution to forward to your origin and base caching on.
	Option?: string
}

#InputOrigin: {
	// The name of the origin resource.
	Name?: string
	// The protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.
	ProtocolPolicy?: string
	// The AWS Region name of the origin resource.
	RegionName?: string
}

#QueryStringObject: {
	// Indicates whether the distribution forwards and caches based on query strings.
	Option?: bool
	// The specific query strings that the distribution forwards to the origin.
	QueryStringsAllowList?: [...string]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
