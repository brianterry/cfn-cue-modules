package keypair

import "strings"

#Properties: {
	// The format of the key pair.
	// Default: ``pem``
	KeyFormat?: "pem" | "ppk"
	// A unique name for the key pair.
	// Constraints: Up to 255 ASCII characters
	KeyName: string
	// The type of key pair. Note that ED25519 keys are not supported for Windows instances.
	// If the ``PublicKeyMaterial`` property is specified, the ``KeyType`` property is ignored, and the key type is inferred from the ``PublicKeyMaterial`` value.
	// Default: ``rsa``
	KeyType?: "rsa" | "ed25519"
	// The public key material. The ``PublicKeyMaterial`` property is used to import a key pair. If this property is not specified, then a new key pair will be created.
	PublicKeyMaterial?: string
	// The tags to apply to the key pair.
	Tags?: [...#Tag]
}

#Tag: {
	// The tag key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
