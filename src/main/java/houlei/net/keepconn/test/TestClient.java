package houlei.net.keepconn.test;

import houlei.net.keepconn.client.ConnectionManager;

import java.io.IOException;

/**
 * �����������ļ򵥿ͻ��˳���
 * <p>
 * ����ʱ�䣺2009-10-28 ����05:28:10
 * 
 * @author ����
 * @since 1.0
 */
public class TestClient {

	public static void main(String[] args) throws IOException {
		ConnectionManager.createConnection("localhost", 65432);
	}

}