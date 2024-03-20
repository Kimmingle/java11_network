package sec2;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
//클라이언트에서는 송신 먼저
//UDP로 서로 채팅하는건 안되나봄?
public class UDPClient {

	
	private static String rData;
	private static BufferedReader file;
	private static int SERVER_PORT = 7000;
	
	
	public static void main(String[] args) {
		
		DatagramSocket socket = null;
		DatagramPacket packet = null;
		
		String rip = "localhost";  //여기에 상대방 IP주소 넣으삼
		try {
			//송신
			InetAddress ip = InetAddress.getByName(rip);
			socket = new DatagramSocket(SERVER_PORT);
			System.out.println("[Message] : ");
			file = new BufferedReader(new InputStreamReader(System.in));
			rData = file.readLine();
			//왜 바이트로 보내는디
			byte[] buffer = rData.getBytes();
			packet = new DatagramPacket(buffer, buffer.length, ip, 8000);
			socket.send(packet);
			
			//수신
			buffer = new byte[512]; //버퍼 초기화
			packet = new DatagramPacket(buffer, buffer.length);
			socket.receive(packet);
			String pData = new String(packet.getData());  //바이트를 문자로 바꿔줌
			
			System.out.println("[Server IP Address] : "+packet.getAddress());
			System.out.println("[Server Port] : "+packet.getPort());
			System.out.println("수신된 데이터 : "+pData);
			
			
//			String rdata = new String(packet.getData());
//			System.out.println("수신 데이터 : "+rdata);
//			
//			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
