package com.loop.miaosha.rabbitmq;

import com.loop.miaosha.domain.MiaoshaUser;

/**
 * 消息队列的对象
 */
public class MiaoshaMessage {
	private MiaoshaUser user;
	private long goodsId;
	public MiaoshaUser getUser() {
		return user;
	}
	public void setUser(MiaoshaUser user) {
		this.user = user;
	}
	public long getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(long goodsId) {
		this.goodsId = goodsId;
	}
}
