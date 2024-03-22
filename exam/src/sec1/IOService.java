package sec1;

import java.io.FileOutputStream;
import java.io.IOException;

public class IOService {
	public static void main(String[] args) {
		output1();
	}
	public static void output1() {
		FileOutputStream fos = null;					//FileWriter로 수정 (출력 객체 클래스 FileOutputStream가 byte 단위 전송이기 때문에 저장되는 데이터의 문자(한글)가 손상되는 현상(정상적으로 인코딩 되지 않음) 발생)
		try {
			fos = new FileOutputStream("test.txt");						//FileWriter
			String str = "안녕하세요!";
			for(int i=0;i<str.length();i++) {
				fos.write(str.charAt(i));						
			} 
			} catch (IOException e) {
				e.printStackTrace();
		} //finally close추가														//예외 발생 유무와 관계없이 사용한 자원은 반환해야하지만(반환 의무 위배) 반환 코드가 없음. 파일을 닫지 않으면 다른 프로그램에서 해당 파일을 사용할 수 없음
	}															
}
