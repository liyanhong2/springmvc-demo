package io.netty.po;

import java.io.Serializable;

public class UserPerson  implements Serializable {
	
	private String userCode;
	
	private String pwd;
	
	private String eachData;
	
	private String flag;   ////0����ʾping;1:��ʾ���ӣ�-1����ʾ�ر����ӣ�2:��ʾ�û���¼��3����ʾ��������

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getEachData() {
		return eachData;
	}

	public void setEachData(String eachData) {
		this.eachData = eachData;
	}
	
	
	
	
	

}
