package publickey

import "strings"

#Properties: {
	// Name of the public key to be imported. The value does not need to be unique.
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// The public portion of a customer-generated key pair. This field is required to create the AWS::IVS::PublicKey resource.
	PublicKeyMaterial?: string & =~"-----BEGIN PUBLIC KEY-----\\r?\\n([a-zA-Z0-9+/=\\r\\n]+)\\r?\\n-----END PUBLIC KEY-----(\\r?\\n)?"
	// A list of key-value pairs that contain metadata for the asset model.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
