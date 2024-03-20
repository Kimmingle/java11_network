package sec2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
//UDP는 실습만 할 것
//수신을 먼저함
//한 컴퓨터에서 서버랑 클라이언트 모두 돌릴 수 없음
public class UDPServer {

	private static String rData;
	private static BufferedReader file;
	
	public static void main(String[] args) {
		DatagramSocket socket= null;  
		DatagramPacket packet=null;		
		int port = 7000;
		
		try {
			socket = new DatagramSocket(port);  
			
			while (true) {
				byte[] buffer = new byte[512];
				packet = new DatagramPacket(buffer, buffer.length);
				System.out.println("ready");
				socket.receive(packet);
				String rdata = new String(packet.getData());
				
				System.out.println("수신 데이터 : "+rdata);
				
				InetAddress ip = packet.getAddress();
				port = packet.getPort();
				System.out.println("[Client IP Address] : "+ip);
				System.out.println("[Client Port] : "+port);
				
				//송신
				packet = new DatagramPacket(packet.getData(),packet.getData().length, ip, port);
				socket.send(packet);   //송신데이터 패킷 실어보내기
				
//				System.out.println("[입력할 Message] : ");
//				file = new BufferedReader(new InputStreamReader(System.in));
//				rData = file.readLine();
//				System.out.println("서버 : "+rData);
				
			}
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

}
