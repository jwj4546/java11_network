package sec1;

import java.net.MalformedURLException;
import java.net.URL;
//URL 클래스 : URL 주소를 다루기 위한 클래스
/*
주요 메소드 설명

1. String getFile()
URL의 파일 이름을 반환하는 메서드

2. String getHost()
URL의 호스트 이름을 반환하는 메서드

3. String getPort()
URL의 포트 번호를 반환하는 메서드. 묵시적인 포트인 경우 -1을 반환

4. String getProtocol()
URL의 프로토콜 이름을 반환하는 메서드

5. String toExternalForm()
전체 URL의 문자열 객체를 반환하는 메서드

6. InputStream openStream() throws IOException

7. URLConnection open COnnection() throws IOException
지정된 URL과 연결 후 URLConnection 객체를 반환하는 메서드
 */
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
