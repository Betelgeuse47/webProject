package javabean;

public class BusinessBean {	
	public boolean valid (String username,String password) {//登录验证方法
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
	public boolean isExist(String username) {//检查用户名是否存在
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
	public void add(String username,String password,String email) {//添加用户
		DBAccessBean db = new DBAccessBean();
		if(db.createConn()) {
			String sql = "insert into usertable1(username,password1,password2,email) values('"+username+"', '"+password+"' , '"+password+"','"+email+"') ";
			db.update(sql);db.closeStmt();db.closeConn();
		}
	}
	


}
