package web.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

public class Utility {
	
	/**
	 * 문자열을 전달받아 암호화 처리하여 반환하는 메소드
	 * @return
	 */
	public static String encrypt(String source) {
		String password="";
		
		try {
			MessageDigest md=MessageDigest.getInstance("SHA-256");
			md.update(source.getBytes());
			
			byte[] digest=md.digest();
			for(int i=0; i<digest.length; i++) {
				password+=Integer.toHexString(digest[i]&0xff);
					// 부호비트를 없애는 표현 &0xff
			}
			
		} catch (NoSuchAlgorithmException e) {
			System.out.println("[에러]잘못된 암호화 알고리즘을 사용 하였습니다.");
		}
		return password;
	}
	
	/**
	 * 문자열을 전달받아 태그 관련 문자열을 모두 제거하여 반환하는 메소드
	 * 
	 * @return
	 */
	public static String stripTap(String source) {
		Pattern htmlTag=Pattern.compile("\\<.*?\\>", Pattern.CASE_INSENSITIVE);
		
		source=htmlTag.matcher(source).replaceAll(""); //태그 관련 문자열 제거
		
		return source;
	}
	
	
	/**
	 * 문자열을 전달받아 태그 관련 기호를 회피문자(Escape) 문자로 변환하여 반환하는 메소드
	 * @return
	 */
	public static String escapeTag(String source) {
		return source.replace("<", "&lt;").replace(">", "&gt;");
	}
}
