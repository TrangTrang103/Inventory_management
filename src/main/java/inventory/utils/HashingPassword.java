package inventory.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

public class HashingPassword {
	static final String SALT ="inventory_management";//thêm để tăng độ khó vào cho hàm băm,thêm chữ gì cũng dc
	public static String encrypt(String originPassword) {
		String result=null;
		byte[] salt = SALT.getBytes();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512");//get vs thuật toán SHA-512
			md.update(salt);
			byte[] hashPass = md.digest(originPassword.getBytes(StandardCharsets.US_ASCII));//từ pass gốc đưa về dạng byte
			result = Base64.getEncoder().encodeToString(hashPass).substring(0, 32);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public static void main(String[] args) {
		String rs = encrypt("12345");
		System.out.println(rs);
	}
}
