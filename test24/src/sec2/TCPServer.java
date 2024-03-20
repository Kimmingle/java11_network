package sec2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class TCPServer {

	public static void main(String[] args) {
		ServerSocket server = null;   //서버용 소켓 
		Socket socket =null;		//클라이언트용 소켓
		
		Scanner sc = new Scanner(System.in);
		
		BufferedReader in = null;   //메세지 보냄    
		PrintWriter out = null;  //메세지 받음
		
		try {
			server = new ServerSocket(6000);  //6000로 서버 시작합니도
			System.out.println("서버 포트 : 6000");
			socket = server.accept(); 		//서버가 연결이 가능한 상태로 대기하는건가?
			System.out.println("연결 대기");
			
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new PrintWriter(socket.getOutputStream()); //출력 객체
			
			while(true) {
				//수신
				String inMessage = in.readLine();  //클라이언트로부터 들어온 메세지를 문자로 읽음
				System.out.println("[From Client] : "+inMessage);
				
				if(inMessage.contains("quit")) break;  //만약 quit가 들어오면 break
				
				System.out.println("[Send to Message] :");  //클라이언트로 보낼 메세지 작성
				String outMessage = sc.nextLine();
				
				//발신
				out.println(outMessage);  //보낼 메세지 출력
				out.flush();   //비우기
				
				if(inMessage.contains("quit")) break;
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				sc.close();
				socket.close();
				server.close();  //역순으로 닫기!
				System.out.println("연결종료");
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("소켓연결 종료 오류");
			}
			
		}
		
	}

}
