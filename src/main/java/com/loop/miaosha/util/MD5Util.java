package com.loop.miaosha.util;

import org.apache.commons.codec.digest.DigestUtils;

public class MD5Util {
	
	public static String md5(String src) {
		return DigestUtils.md5Hex(src);
	}
	
	private static final String pub_key = "1a2b3c4d";
	
	public static String inputPassToFormPass(String inputPass) {
		String str = ""+pub_key.charAt(0)+pub_key.charAt(2) + inputPass +pub_key.charAt(5) + pub_key.charAt(4);
		return md5(str);
	}
	
	public static String formPassToDBPass(String formPass, String pri_key) {
		String str = ""+pri_key.charAt(0)+pri_key.charAt(1) + formPass +pri_key.charAt(2) + pri_key.charAt(3);
		return md5(str);
	}
	
	public static String inputPassToDbPass(String inputPass, String saltDB) {
		String formPass = inputPassToFormPass(inputPass);
		String dbPass = formPassToDBPass(formPass, saltDB);
		return dbPass;
	}
	
	public static void main(String[] args) {
		System.out.println(inputPassToFormPass("123456"));//d3b1294a61a07da9b49b6e22b2cbd7f9
//		System.out.println(formPassToDBPass(inputPassToFormPass("123456"), "1a2b3c4d"));
//		System.out.println(inputPassToDbPass("123456", "1a2b3c4d"));//b7797cce01b4b131b433b6acf4add449
	}
	
}
