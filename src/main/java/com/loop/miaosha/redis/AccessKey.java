package com.loop.miaosha.redis;

public class AccessKey extends BasePrefix{

	private AccessKey( int expireSeconds, String prefix) {
		super(expireSeconds, prefix);
	}
	
	public static AccessKey withExpire(int expireSeconds) {
		//access 使用权
		return new AccessKey(expireSeconds, "access");
	}
	
}
