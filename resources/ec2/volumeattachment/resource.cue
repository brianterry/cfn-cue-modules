package volumeattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Attaches an Amazon EBS volume to a running instance and exposes it to the instance with the specified device name.
 Before this resource can be deleted (and therefore the volume detached), you must first unmount the volume in the instance. Failure to do so results in the volume being stuck in the busy state while it is trying to detach, which could possibly damage the file system or the data it contains.
 If an Amazon EBS volume is the root device of an instance, it cannot be detached while the instance is in the "running" state. To detach the root volume, stop the instance first.
 If the root volume is detached from an instance with an MKT product code, then the product codes from that volume are no longer associated with the instance.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VolumeAttachment"
	Properties: #Properties
}
