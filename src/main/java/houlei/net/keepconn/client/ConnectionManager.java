package houlei.net.keepconn.client;

import houlei.net.keepconn.messages.Message;
import houlei.net.keepconn.messages.MessageFactory;
import houlei.net.keepconn.messages.ParseException;

import java.io.IOException;
import java.net.Socket;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * �ͻ��˳����ӹ����࣬����ά���������ĳ����ӡ�
 * <p>
 * ����ʱ�䣺2009-10-28 ����04:17:09
 * @author ����
 * @since 1.0
 */
public class ConnectionManager {
	/**
	 * �������ڣ���λ�����룩
	 */
	private volatile static long activeCycle = 1000;
	
	/**
	 * ��Ų����ĳ�����
	 */
	private static Set<Connection> pool = Collections.synchronizedSet(new HashSet<Connection>());
	
	/**
	 * ���ڶ�ʱ����������
	 */
	private static ConnectActiveMonitor monitor = new ConnectActiveMonitor();
	
	static{
		monitor.start();
	}
	
	public static Connection createConnection(String host,int port) throws IOException{
		Connection conn = new Connection(host,port);
		pool.add(conn);
		return conn;
	}
	
	public static Connection createConnection(Socket socket) throws IOException{
		Connection conn = new Connection(socket);
		pool.add(conn);
		return conn;
	}
	
	public static void removeConnection(Connection conn){
		pool.remove(conn);
	}
	
	static class ConnectActiveMonitor extends Thread{
		private volatile boolean running = true;
		public void run(){
			while(running){
				long time = System.currentTimeMillis();
				for(Connection con : pool){
					try {
						if(con.getLastActTime()+activeCycle<time)
							con.send(MessageFactory.getInstance(Message.ActiveTestRequest));
					} catch (IOException e) {
						removeConnection(con);
					} catch (ParseException e) {
					}
				}
				yield();
			}
		}
		void setRunning(boolean b){
			running = b;
		}
	}
}