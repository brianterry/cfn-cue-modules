package trustanchor

import "strings"

#Properties: {
	Enabled?: bool
	Name: string
	NotificationSettings?: [...#NotificationSetting]
	Source: #Source
	Tags?: [...#Tag]
}

#NotificationChannel: "ALL"

#NotificationEvent: "CA_CERTIFICATE_EXPIRY" | "END_ENTITY_CERTIFICATE_EXPIRY"

#NotificationSetting: {
	Channel?: #NotificationChannel
	Enabled: bool
	Event: #NotificationEvent
	Threshold?: number & >=1 & <=360
}

#Source: {
	SourceData: #SourceData
	SourceType: #TrustAnchorType
}

#SourceData: {
	X509CertificateData: string
} | {
	AcmPcaArn: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TrustAnchorType: "AWS_ACM_PCA" | "CERTIFICATE_BUNDLE"
