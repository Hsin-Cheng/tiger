/*
 * Base64�O�@�د�N���NBinary��ƥ�64�ئr���զX���r�ꪺ��k�A�ӳo��Binary��ƩM�r���Ʃ��������O�i�H�����ഫ���A�Q����K�C
 * �b������ΤW�ABase64���F��NBinary��ƥi���Ƥ��~�A�]�`�ΨӪ�ܦr��[�K�L�᪺���e
 * 
 * Java 8��java.util�M�󤤡A�s�W�FBase64�����O�A�i�H�ΨӳB�zBase64���s�X�P�ѽX
 * Java 8���Ѫ�Base64�֦���n���į�A�n��sun.misc�M�󴣨Ѫ��٭n�֦ܤ�11���A * ��Apache Commons Codec���Ѫ��٭n�֦ܤ�3���C
 * �]���bJava�W�Y�n�ϥ�Base64�A��ĳ�ϥγo��Java 8���U��java.util�M��Ҵ��Ѫ�Base64���O�C
*/

import java.io.*;
import java.util.Base64;

public class BASE64_Encoder$Decoder_ByJava8 {

	public static void main(String[] args) throws IOException {
		
		//�I�ӷ� : �Ϥ�tomcat.gif
		InputStream in = new FileInputStream("images/tomcat.gif");
		byte[] buffer1 = new byte[in.available()];
		in.read(buffer1);
		in.close();

		//�s�X���G : Base64 �s�X���r��
		Base64.Encoder encoder = Base64.getEncoder();
		String encodedText = encoder.encodeToString(buffer1);
		System.out.println(encodedText);



		//�I�ѽX�ӷ� : Base64�s�X���r��
		Base64.Decoder decoder = Base64.getDecoder();
		byte[] buffer2 = decoder.decode(encodedText);
		
    //���I: �Ϥ�tomcat2.gif
		OutputStream out = new FileOutputStream("images/tomcat2.gif");
		out.write(buffer2);
		out.close();
	}
}