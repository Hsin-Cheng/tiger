/*
 * Base64是一種能將任意Binary資料用64種字元組合成字串的方法，而這個Binary資料和字串資料彼此之間是可以互相轉換的，十分方便。
 * 在實際應用上，Base64除了能將Binary資料可視化之外，也常用來表示字串加密過後的內容
 * 
 * 早期在Java上做Base64的編碼與解碼，會使用到JDK裡sun.misc套件下的BASE64Encoder和BASE64Decoder這兩個類別
 * 這個sun.misc套件所提供的Base64功能，編碼和解碼的效率並不太好，而且在以後的Java版本可能就不被支援了，不建議使用。
*/

import java.io.*;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class BASE64_Encoder$Decoder_BeforeJava8 {

	public static void main(String[] args) throws IOException {
		
		//來源 (圖片tomcat.gif)
		InputStream in = new FileInputStream("images/tomcat.gif");
		byte[] buffer = new byte[in.available()];
		in.read(buffer);
		in.close();

    //Base64編碼
		BASE64Encoder encoder = new BASE64Encoder();
		String encodedText = encoder.encodeBuffer(buffer);
		System.out.println(encodedText);

	}

}
