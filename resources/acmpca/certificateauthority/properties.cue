package certificateauthority

#Properties: {
	// Structure that contains CSR pass through extension information used by the CreateCertificateAuthority action.
	CsrExtensions?: #CsrExtensions
	// Public key algorithm and size, in bits, of the key pair that your CA creates when it issues a certificate.
	KeyAlgorithm: string
	// KeyStorageSecurityStadard defines a cryptographic key management compliance standard used for handling CA keys.
	KeyStorageSecurityStandard?: string
	// Certificate revocation information used by the CreateCertificateAuthority and UpdateCertificateAuthority actions.
	RevocationConfiguration?: #RevocationConfiguration
	// Algorithm your CA uses to sign certificate requests.
	SigningAlgorithm: string
	// Structure that contains X.500 distinguished name information for your CA.
	Subject: #Subject
	Tags?: [...#Tag]
	// The type of the certificate authority.
	Type: string
	// Usage mode of the ceritificate authority.
	UsageMode?: string
}

#AccessDescription: {
	AccessLocation: #GeneralName
	AccessMethod: #AccessMethod
}

#AccessMethod: {
	AccessMethodType?: #AccessMethodType
	CustomObjectIdentifier?: #CustomObjectIdentifier
}

#AccessMethodType: string

#Arn: string

#CrlConfiguration: {
	CrlDistributionPointExtensionConfiguration?: #CrlDistributionPointExtensionConfiguration
	CrlType?: string
	CustomCname?: string
	CustomPath?: string
	Enabled: bool
	ExpirationInDays?: int
	S3BucketName?: string
	S3ObjectAcl?: string
}

#CrlDistributionPointExtensionConfiguration: {
	OmitExtension: bool
}

#CsrExtensions: {
	KeyUsage?: #KeyUsage
	SubjectInformationAccess?: #SubjectInformationAccess
}

#CustomAttribute: {
	ObjectIdentifier: #CustomObjectIdentifier
	Value: string
}

#CustomAttributeList: [...#CustomAttribute]

#CustomObjectIdentifier: string

#DnsName: string

#EdiPartyName: {
	NameAssigner?: string
	PartyName: string
}

#GeneralName: {
	DirectoryName?: #Subject
	DnsName?: #DnsName
	EdiPartyName?: #EdiPartyName
	IpAddress?: #IpAddress
	OtherName?: #OtherName
	RegisteredId?: #CustomObjectIdentifier
	Rfc822Name?: #Rfc822Name
	UniformResourceIdentifier?: #UniformResourceIdentifier
}

#IpAddress: string

#KeyUsage: {
	CRLSign?: bool
	DataEncipherment?: bool
	DecipherOnly?: bool
	DigitalSignature?: bool
	EncipherOnly?: bool
	KeyAgreement?: bool
	KeyCertSign?: bool
	KeyEncipherment?: bool
	NonRepudiation?: bool
}

#OcspConfiguration: {
	Enabled: bool
	OcspCustomCname?: string
}

#OtherName: {
	TypeId: #CustomObjectIdentifier
	Value: string
}

#RevocationConfiguration: {
	CrlConfiguration?: #CrlConfiguration
	OcspConfiguration?: #OcspConfiguration
}

#Rfc822Name: string

#Subject: {
	CommonName?: string
	Country?: string
	CustomAttributes?: #CustomAttributeList
	DistinguishedNameQualifier?: string
	GenerationQualifier?: string
	GivenName?: string
	Initials?: string
	Locality?: string
	Organization?: string
	OrganizationalUnit?: string
	Pseudonym?: string
	SerialNumber?: string
	State?: string
	Surname?: string
	Title?: string
}

#SubjectInformationAccess: [...#AccessDescription]

#Tag: {
	Key: string
	Value?: string
}

#UniformResourceIdentifier: string
