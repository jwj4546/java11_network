package sec1;

import java.net.MalformedURLException;
import java.net.URL;

public class URLExam {
	public static void main(String[] args) throws MalformedURLException {
		URL yt = new URL("https://www.youtube.com/");
		System.out.println("프로토콜 종류 : "+yt.getProtocol());
		System.out.println("포트 번호 : "+yt.getPort());
		System.out.println("호스트 이름 : "+yt.getHost());
		System.out.println("파일(경로 포함) : "+yt.getFile());
		System.out.println("전체 URL : "+yt.toExternalForm());
	}
}
