package key

import "strings"

#Properties: {
	DeriveKeyUsage?: #DeriveKeyUsage
	Enabled?: bool
	Exportable: bool
	KeyAttributes: #KeyAttributes
	KeyCheckValueAlgorithm?: #KeyCheckValueAlgorithm
	// The resource-based policy attached to the key, in JSON format.
	Policy?: string & strings.MinRunes(1) & strings.MaxRunes(20480)
	ReplicationRegions?: [...string & =~"^[a-z]{2}-[a-z]{1,16}-[0-9]+$"]
	Tags?: [...#Tag]
}

#DeriveKeyUsage: "TR31_B0_BASE_DERIVATION_KEY" | "TR31_C0_CARD_VERIFICATION_KEY" | "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY" | "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS" | "TR31_E1_EMV_MKEY_CONFIDENTIALITY" | "TR31_E2_EMV_MKEY_INTEGRITY" | "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS" | "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION" | "TR31_E6_EMV_MKEY_OTHER" | "TR31_K0_KEY_ENCRYPTION_KEY" | "TR31_K1_KEY_BLOCK_PROTECTION_KEY" | "TR31_M3_ISO_9797_3_MAC_KEY" | "TR31_M1_ISO_9797_1_MAC_KEY" | "TR31_M6_ISO_9797_5_CMAC_KEY" | "TR31_M7_HMAC_KEY" | "TR31_P0_PIN_ENCRYPTION_KEY" | "TR31_P1_PIN_GENERATION_KEY" | "TR31_V1_IBM3624_PIN_VERIFICATION_KEY" | "TR31_V2_VISA_PIN_VERIFICATION_KEY"

#KeyAlgorithm: "TDES_2KEY" | "TDES_3KEY" | "AES_128" | "AES_192" | "AES_256" | "HMAC_SHA256" | "HMAC_SHA384" | "HMAC_SHA512" | "HMAC_SHA224" | "RSA_2048" | "RSA_3072" | "RSA_4096" | "ECC_NIST_P256" | "ECC_NIST_P384" | "ECC_NIST_P521"

#KeyAttributes: {
	KeyAlgorithm: #KeyAlgorithm
	KeyClass: #KeyClass
	KeyModesOfUse: #KeyModesOfUse
	KeyUsage: #KeyUsage
}

#KeyCheckValueAlgorithm: "CMAC" | "ANSI_X9_24" | "HMAC" | "SHA_1"

#KeyClass: "SYMMETRIC_KEY" | "ASYMMETRIC_KEY_PAIR" | "PRIVATE_KEY" | "PUBLIC_KEY"

#KeyModesOfUse: {
	Decrypt?: bool
	DeriveKey?: bool
	Encrypt?: bool
	Generate?: bool
	NoRestrictions?: bool
	Sign?: bool
	Unwrap?: bool
	Verify?: bool
	Wrap?: bool
}

#KeyOrigin: "EXTERNAL" | "AWS_PAYMENT_CRYPTOGRAPHY"

#KeyReplicationState: "IN_PROGRESS" | "DELETE_IN_PROGRESS" | "FAILED" | "SYNCHRONIZED"

#KeyState: "CREATE_IN_PROGRESS" | "CREATE_COMPLETE" | "DELETE_PENDING" | "DELETE_COMPLETE"

#KeyUsage: "TR31_B0_BASE_DERIVATION_KEY" | "TR31_C0_CARD_VERIFICATION_KEY" | "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY" | "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION" | "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS" | "TR31_E1_EMV_MKEY_CONFIDENTIALITY" | "TR31_E2_EMV_MKEY_INTEGRITY" | "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS" | "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION" | "TR31_E6_EMV_MKEY_OTHER" | "TR31_K0_KEY_ENCRYPTION_KEY" | "TR31_K1_KEY_BLOCK_PROTECTION_KEY" | "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT" | "TR31_M0_ISO_16609_MAC_KEY" | "TR31_M3_ISO_9797_3_MAC_KEY" | "TR31_M1_ISO_9797_1_MAC_KEY" | "TR31_M6_ISO_9797_5_CMAC_KEY" | "TR31_M7_HMAC_KEY" | "TR31_P0_PIN_ENCRYPTION_KEY" | "TR31_P1_PIN_GENERATION_KEY" | "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE" | "TR31_V1_IBM3624_PIN_VERIFICATION_KEY" | "TR31_V2_VISA_PIN_VERIFICATION_KEY" | "TR31_K2_TR34_ASYMMETRIC_KEY"

#ReplicationStatus: {...}

#ReplicationStatusType: {
	Status: #KeyReplicationState
	StatusMessage?: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
