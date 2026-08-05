package channelgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) associated with the resource.</p>
	Arn: string
	// <p>The date and time the channel group was created.</p>
	CreatedAt: string
	// <p>The output domain where the source stream should be sent. Integrate the domain with a downstream CDN (such as Amazon CloudFront) or playback device.</p>
	EgressDomain: string
	// <p>The date and time the channel group was modified.</p>
	ModifiedAt: string
}
