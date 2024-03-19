package sec1;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class URLConnectionExam {

	public static void main(String[] args) {
		try {
			URL yt = new URL("https://www.youtube.com/");
			try {
				URLConnection ytCon = yt.openConnection();
				System.out.println("문서의 타입 : "+ytCon.getContentType());
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}
}
