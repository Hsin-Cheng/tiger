/*
 * Base64�O�@�د�N��NBinary��ƥ�64�ئr���զX���r�ꪺ��k�A�ӳo��Binary��ƩM�r���Ʃ��������O�i�H�����ഫ���A�Q����K�C
 * �b������ΤW�ABase64���F��NBinary��ƥi���Ƥ��~�A�]�`�ΨӪ�ܦr��[�K�L�᪺���e
 * 
 * �����bJava�W��Base64���s�X�P�ѽX�A�|�ϥΨ�JDK��sun.misc�M��U��BASE64Encoder�MBASE64Decoder�o������O
 * �o��sun.misc�M��Ҵ��Ѫ�Base64�\��A�s�X�M�ѽX���Ĳv�ä��Ӧn�A�ӥB�b�H�᪺Java�����i��N���Q�䴩�F�A����ĳ�ϥΡC
*/

import java.io.*;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class BASE64_Encoder$Decoder_BeforeJava8 {

	public static void main(String[] args) throws IOException {
		
		//�ӷ� (�Ϥ�tomcat.gif)
		InputStream in = new FileInputStream("images/tomcat.gif");
		byte[] buffer = new byte[in.available()];
		in.read(buffer);
		in.close();

    //Base64�s�X
		BASE64Encoder encoder = new BASE64Encoder();
		String encodedText = encoder.encodeBuffer(buffer);
		System.out.println(encodedText);
//new version testing git 
	}

}
