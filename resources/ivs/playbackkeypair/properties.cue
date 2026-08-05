package playbackkeypair

import "strings"

#Properties: {
	// An arbitrary string (a nickname) assigned to a playback key pair that helps the customer identify that resource. The value does not need to be unique.
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// The public portion of a customer-generated key pair. This field is required to create the AWS::IVS::PlaybackKeyPair resource.
	PublicKeyMaterial?: string
	// A list of key-value pairs that contain metadata for the asset model.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
