package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class NetworkExam3 {

	public static void main(String[] args) {
		//본인 컴퓨터의 ip주소 컴퓨터 이름 출력
		
		try {
			InetAddress local = InetAddress.getLocalHost();
			
			System.out.println("ip주소 :"+local.getHostAddress());
			System.out.println("네트워크상의 컴퓨터 이름 :"+ local.getHostName());
			
			System.out.println("구글");
			InetAddress[] iArr = InetAddress.getAllByName("www.goole.com");
			System.out.println();
			
			for (InetAddress addr : iArr) {
				System.out.println(addr.getHostAddress());
			}
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}
}