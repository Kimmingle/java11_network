package sec2;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class TCPServer_test {

	public static void main(String[] args) {
		
		ServerSocket server = null;  //서버 소켓
		Socket socket= null;					//클라이언트 소켓
		
		Scanner  sc = new Scanner(System.in);
		
		BufferedReader in = null;
		PrintWriter out = null;
		
		try {
			server = new ServerSocket(6000);  //6000으로 서버 열어줌
			socket = server.accept(); //대기
			
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			
			while(true) {
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
		
	}

}
