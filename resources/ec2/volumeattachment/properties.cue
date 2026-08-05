package volumeattachment

#Properties: {
	// The device name (for example, ``/dev/sdh`` or ``xvdh``).
	Device?: #Device
	// The index of the EBS card. Some instance types support multiple EBS cards. The default EBS card index is 0.
	EbsCardIndex?: #EbsCardIndex
	// The ID of the instance to which the volume attaches. This value can be a reference to an [AWS::EC2::Instance](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html) resource, or it can be the physical ID of an existing EC2 instance.
	InstanceId: #InstanceId
	// The ID of the Amazon EBS volume. The volume and instance must be within the same Availability Zone. This value can be a reference to an [AWS::EC2::Volume](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html) resource, or it can be the volume ID of an existing Amazon EBS volume.
	VolumeId: #VolumeId
}
