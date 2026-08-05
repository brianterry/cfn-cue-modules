package domainconfiguration

import "strings"

#Properties: {
	ApplicationProtocol?: "SECURE_MQTT" | "MQTT_WSS" | "HTTPS" | "DEFAULT"
	AuthenticationType?: "AWS_X509" | "CUSTOM_AUTH" | "AWS_SIGV4" | "CUSTOM_AUTH_X509" | "DEFAULT"
	AuthorizerConfig?: #AuthorizerConfig
	ClientCertificateConfig?: #ClientCertificateConfig
	DomainConfigurationName?: string & =~"^[\\w.-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	DomainConfigurationStatus?: "ENABLED" | "DISABLED"
	DomainName?: string & strings.MinRunes(1) & strings.MaxRunes(253)
	ServerCertificateArns?: [...string & =~"^arn:aws(-cn|-us-gov|-iso-b|-iso)?:acm:[a-z]{2}-(gov-|iso-|isob-)?[a-z]{4,9}-\\d{1}:\\d{12}:certificate/[a-zA-Z0-9/-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	ServerCertificateConfig?: #ServerCertificateConfig
	ServiceType?: "DATA" | "CREDENTIAL_PROVIDER" | "JOBS"
	Tags?: [...#Tag]
	TlsConfig?: #TlsConfig
	ValidationCertificateArn?: string & =~"^arn:aws(-cn|-us-gov|-iso-b|-iso)?:acm:[a-z]{2}-(gov-|iso-|isob-)?[a-z]{4,9}-\\d{1}:\\d{12}:certificate/[a-zA-Z0-9/-]+$"
}

#AuthorizerConfig: {
	AllowAuthorizerOverride?: bool
	DefaultAuthorizerName?: string & =~"^[\\w=,@-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#ClientCertificateConfig: {
	ClientCertificateCallbackArn?: string & strings.MinRunes(1) & strings.MaxRunes(170)
}

#ServerCertificateConfig: {
	EnableOCSPCheck?: bool
	OcspAuthorizedResponderArn?: string & =~"^arn:aws(-cn|-us-gov|-iso-b|-iso)?:acm:[a-z]{2}-(gov-|iso-|isob-)?[a-z]{4,9}-\\d{1}:\\d{12}:certificate/[a-zA-Z0-9/-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	OcspLambdaArn?: string & strings.MinRunes(1) & strings.MaxRunes(170)
}

#ServerCertificateSummary: {
	ServerCertificateArn?: string & =~"^arn:aws(-cn|-us-gov|-iso-b|-iso)?:acm:[a-z]{2}-(gov-|iso-|isob-)?[a-z]{4,9}-\\d{1}:\\d{12}:certificate/[a-zA-Z0-9/-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ServerCertificateStatus?: "INVALID" | "VALID"
	ServerCertificateStatusDetail?: string
}

#Tag: {
	Key: string
	Value: string
}

#TlsConfig: {
	SecurityPolicy?: string & strings.MaxRunes(128)
}
