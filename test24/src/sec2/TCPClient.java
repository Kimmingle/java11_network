package sec2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;

public class TCPClient {

	public static void main(String[] args) {
		
		Socket socket = null; 	//서버 소켓은 필요 없으니까 클라이언트 소켓만 만들어줌
		Scanner sc = new Scanner(System.in);    //메세지 입력
		
		
		BufferedReader in = null;   //메세지 보냄
		PrintWriter out = null;  //메세지 받음
		
		try {
			socket = new Socket("127.0.0.1", 6000);  //서버 연결
			
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new PrintWriter(socket.getOutputStream()); //출력 객체
			
			while(true) {
				System.out.print("[From Client] : ");   //보낼 메세지 작성
				String outMessage = sc.nextLine();
				
				out.println(outMessage);  //보낼 메세지 출력
				out.flush();   //비우기(메세지 발송)
				
				if(outMessage.contains("quit")) break;
				
				String inMessage = in.readLine();   //받은 메세지 입력
				System.out.println("[From Server] : "+inMessage); 
				
				if(inMessage.contains("quit")) break;
			}
			
		} catch(IOException e) {
			e.printStackTrace();
			System.out.println("통신 오류");
			
		} finally {
			
			try {
				sc.close();
				socket.close();
				System.out.println("클라이언트 소켓 연결 종료 ");
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("클라이언트 소켓 연결 종료 오류");
			}
		}
		
	}

}
