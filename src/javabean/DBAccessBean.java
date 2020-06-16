package javabean;
import java.sql.*;

public class DBAccessBean {
	private String drv ="com.mysql.jdbc.Driver";//���ݿ�����
	private String url="jdbc:mysql://localhost:3306/shoppingcart";//URL
	private String usr= "root";//�û���
	private String pwd="wrq720303";//����
	private Connection conn = null;//���ݿ�����Ӷ���
	private Statement stmt = null;//SQL������������
	private ResultSet rs = null;//���������
	public String getDrv() {return drv;
	}
	public void setDrv(String drv ) {this.drv=drv;
	}
	public String getUrl() {return url;
	}
	public void setUrl(String url ) {this.url=url;
	}
	public String getUsr() {return usr;
	}
	public void setUsr(String usr ) {this.usr=usr;
	}
	public String getPwd() {return pwd;
	}
	public void setPwd(String pwd ) {this.pwd=pwd;
	}
	public Connection getConn() {return conn;
	}
	public void setConn(Connection conn ) {this.conn=conn;
	}
	public Statement getStmt() {return stmt;
	}
	public void setStmt(Statement stmt ) {this.stmt=stmt;
	}
	public ResultSet getRs() {return rs;
	}
	public void setRs(ResultSet rs) {this.rs=rs;
	}

	public boolean createConn() { //�������ݿ�����
		boolean b =false;
		try {Class.forName(drv).newInstance();
		conn = DriverManager.getConnection(url,usr,pwd);
		b=true;
		}catch(SQLException e) {}
		catch(ClassNotFoundException e) {}
		catch(InstantiationException e) {}
		catch(IllegalAccessException e) {}
		return b;
	}
	public boolean update(String sql) {//�������ݿ����ݵ�SQL����
		boolean b =false;
		try {
			stmt=conn.createStatement();
			stmt.execute(sql);
			b=true;
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return b;
		
	}
	public void query(String sql) {//��ѯ���ݿ����ݵ�SQL����
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		}catch(Exception e){
		}
	}
	public boolean next(){//�Ƶ�������¼�ķ���
		boolean b =false;
		try {
			if(rs.next())
				b=true;
		}catch(Exception e) {}
		return b;
	}
	public String getValue(String field) {//ȡ�õ�ǰ��¼���ֶ�field��ֵ
		String value = null;
		try {
			if(rs!=null)value = rs.getString(field);
		}catch(Exception e) {}
		return value;
	}
	//�ر������ݿ�������ص���������
	public void closeConn() {
		try {
			if(conn!=null) 
			conn.close();
			}catch(SQLException e) {}
	}
	public void closeStmt() {
		try {
			if(stmt!=null) 
			stmt.close();
			}catch(SQLException e) {}
	}
	public void closeRs() {
		try {
			if(rs!=null) 
			rs.close();
			}catch(SQLException e) {}
	}
}
	

		
		