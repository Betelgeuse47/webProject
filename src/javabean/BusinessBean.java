package javabean;

public class BusinessBean {	
	public boolean valid (String username,String password) {//��¼��֤����
		boolean  isValid = false;
		DBAccessBean db = new DBAccessBean();
		if(db.createConn()) {
			String sql = "select * from usertable1 where username='"+username+"' and password1='"+password+"'  ";
			db.query(sql);
			if(db.next()) {isValid = true;
			}
			db.closeRs();db.closeStmt();db.closeConn();
		}
		return isValid;
	}
	public boolean isExist(String username) {//����û����Ƿ����
		boolean isExist = false;
		DBAccessBean db = new DBAccessBean();
		if(db.createConn()) {
			String sql = "select * from usertable1 where username='"+username+"'  ";
			db.query(sql);
			if(db.next()) {isExist = true;
			}
			db.closeRs();db.closeStmt();db.closeConn();
		}
		return isExist;
	}
	public void add(String username,String password,String email) {//����û�
		DBAccessBean db = new DBAccessBean();
		if(db.createConn()) {
			String sql = "insert into usertable1(username,password1,password2,email) values('"+username+"', '"+password+"' , '"+password+"','"+email+"') ";
			db.update(sql);db.closeStmt();db.closeConn();
		}
	}
	


}
