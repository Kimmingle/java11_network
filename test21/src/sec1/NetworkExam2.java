package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;
//파일, 데이터베이스, 네트워크 등은 외부 자원으로써 반드시 try/catch해야한다
public class NetworkExam2 {

	public static void main(String[] args) {
		try {
			InetAddress local = InetAddress.getLocalHost();
//			InetAddress local = InetAddress.getLocalHost();
			
			System.out.println(local.getHostAddress());
			System.out.println(local.getHostName());
			InetAddress[] iArr = InetAddress.getAllByName("www.naver.com");
			
			for (InetAddress addr : iArr) {
				System.out.println(addr.getHostAddress());
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}

}
