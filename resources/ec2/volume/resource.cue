package volume

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies an Amazon Elastic Block Store (Amazon EBS) volume. You can create an empty volume, a volume from a snapshot, or a volume copy from an existing source volume.
   +  When you use CFNlong to update an Amazon EBS volume that modifies ``Iops``, ``Size``, or ``VolumeType``, there is a cooldown period before another operation can occur. This can cause your stack to report being in ``UPDATE_IN_PROGRESS`` or ``UPDATE_ROLLBACK_IN_PROGRESS`` for long periods of time. Some common scenarios when you might encounter a cooldown period for Amazon EBS include:
  +  You successfully update an Amazon EBS volume and the update succeeds. When you attempt another update within the cooldown window, that update will be subject to a cooldown period.
  +  You successfully update an Amazon EBS volume and the update succeeds but another change in your ``update-stack`` call fails. The rollback will be subject to a cooldown period.
  
 For more information, see [Requirements for EBS volume modifications](https://docs.aws.amazon.com/ebs/latest/userguide/modify-volume-requirements.html).
  +  Amazon EBS does not support sizing down an Amazon EBS volume. CFNlong does not attempt to modify an Amazon EBS volume to a smaller size on rollback.
  
   *DeletionPolicy attribute* 
 To control how CFNlong handles the volume when the stack is deleted, set a deletion policy for your volume. You can choose to retain the volume, to delete the volume, or to create a snapshot of the volume. For more information, see [DeletionPolicy attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html).
  If you set a deletion policy that creates a snapshot, all tags on the volume are included in the snapshot.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::Volume"
	Properties: #Properties
}
