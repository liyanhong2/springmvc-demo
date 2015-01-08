package io.netty.servlet;

import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.common.NettyConstants;
import io.netty.po.UserPerson;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NettyServlet extends HttpServlet{
	
	   private String getData(){  
	        StringBuffer sb = new StringBuffer();  
	        sb.append("Hello~First Servlet!");  
	        return sb.toString();  
	    }  
	      
	    @Override  
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  
	            throws ServletException, IOException {  
	        // TODO Auto-generated method stub   
//	      super.doGet(req, resp);   
	        String data = this.getData();  
	        resp.setContentType("text/html;charset=utf-8");  
	        
	        System.out.println("doGet:"+data);
	        
	        ChannelHandlerContext ctx = null;
	        
	        String userCode="admin";
//	        Map<String,ChannelHandlerContext> testMap=NettyConstants.MAPCHANNEL;
	        
	        try{
	        
	        	if(NettyConstants.MAPCHANNEL !=null){
		        	if(NettyConstants.MAPCHANNEL.containsKey(userCode)){
		     
		        		
		        		
//	//	        		ctx = NettyConstants.MAPCHANNEL.get(userCode);
//		        		////0����ʾping;1:��ʾ���ӣ�-1����ʾ�ر����ӣ�2:��ʾ�û���¼��3����ʾ��������
//		        		//String jsons="{\"user\":[{\"pwd\":\"asdfa\",\"userCode\":\"001\"}]}\r\n";
//		        		String jsons="{\"respData\":[{\"eachData\":\"С���ӹԹԣ���ֻ�ϻ�\",\"flag\":\"3\"}]}";
//		        		jsons=URLEncoder.encode(jsons, "UTF-8");//
//		        		ctx.write(jsons+"\r\n");
//		        		ctx.flush();
		        	}
		        }
	        	
	        }catch(Exception e){
	        	
	        }
	        resp.getOutputStream().write(data.getBytes("utf-8"));  
	    }  
	      
	    @Override  
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp)  
	            throws ServletException, IOException {  
	        // TODO Auto-generated method stub   
//	      super.doPost(req, resp);   
	    	String data = this.getData();  
	    	System.out.println("doPost:"+data);
	    }  


}
