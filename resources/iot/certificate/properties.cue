package certificate

import "strings"

#Properties: {
	CACertificatePem?: string & strings.MinRunes(1) & strings.MaxRunes(65536)
	CertificateMode?: "DEFAULT" | "SNI_ONLY"
	CertificatePem?: string & strings.MinRunes(1) & strings.MaxRunes(65536)
	CertificateSigningRequest?: string
	Status: "ACTIVE" | "INACTIVE" | "REVOKED" | "PENDING_TRANSFER" | "PENDING_ACTIVATION"
}
