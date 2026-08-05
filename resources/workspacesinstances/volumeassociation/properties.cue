package volumeassociation

import "strings"

#Properties: {
	// The device name for the volume attachment
	Device: string & strings.MaxRunes(32)
	// Mode to use when disassociating the volume
	DisassociateMode?: "FORCE" | "NO_FORCE"
	// ID of the volume to attach to the workspace instance
	VolumeId: string & =~"^vol-[0-9a-zA-Z]{1,63}$"
	// ID of the workspace instance to associate with the volume
	WorkspaceInstanceId: string & =~"^wsinst-[0-9a-zA-Z]{8,63}$"
}
