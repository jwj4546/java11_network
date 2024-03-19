package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class NetworkExam3 {
	public static void main(String[] args) {
		//본인 컴퓨터의 ip주소 컴퓨터 이름 출력
		try {
			InetAddress local = InetAddress.getLocalHost();
			System.out.println(local.getHostAddress());
			System.out.println(local.getHostName());
		//www.google.com의 연결 IP 주소를 출력
			InetAddress[] iArr = InetAddress.getAllByName("www.google.com");
			for(InetAddress addr:iArr) {
				System.out.println(addr.getHostAddress());
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}
}
