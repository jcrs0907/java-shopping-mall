package web.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

public class Utility {
	
	/**
	 * ���ڿ��� ���޹޾� ��ȣȭ ó���Ͽ� ��ȯ�ϴ� �޼ҵ�
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
					// ��ȣ��Ʈ�� ���ִ� ǥ�� &0xff
			}
			
		} catch (NoSuchAlgorithmException e) {
			System.out.println("[����]�߸��� ��ȣȭ �˰����� ��� �Ͽ����ϴ�.");
		}
		return password;
	}
	
	/**
	 * ���ڿ��� ���޹޾� �±� ���� ���ڿ��� ��� �����Ͽ� ��ȯ�ϴ� �޼ҵ�
	 * 
	 * @return
	 */
	public static String stripTap(String source) {
		Pattern htmlTag=Pattern.compile("\\<.*?\\>", Pattern.CASE_INSENSITIVE);
		
		source=htmlTag.matcher(source).replaceAll(""); //�±� ���� ���ڿ� ����
		
		return source;
	}
	
	
	/**
	 * ���ڿ��� ���޹޾� �±� ���� ��ȣ�� ȸ�ǹ���(Escape) ���ڷ� ��ȯ�Ͽ� ��ȯ�ϴ� �޼ҵ�
	 * @return
	 */
	public static String escapeTag(String source) {
		return source.replace("<", "&lt;").replace(">", "&gt;");
	}
}
