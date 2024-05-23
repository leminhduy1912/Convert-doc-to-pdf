package com.example.ltm.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.example.ltm.bean.Account;
import com.example.ltm.utils.ConnectionProvider;
//import model.bean.Account;
//import utils.ConnectionProvider;

public class AccountDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public AccountDao() {
		connection = ConnectionProvider.getConnection();
	}
	
	public List<Account> getAll(){
		List<Account> admins = new ArrayList<Account>();
		String query = "select * from account";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Account admin = new Account(rs.getString("username"), rs.getString("password"));
				admins.add(admin);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return admins;
	}
	
	public boolean isExist(String username,String password){
		String query = "select * from account where username = ? and password= ? ";
		try {
			pst = connection.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, password);
			rs = pst.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	public boolean save(Account account) {
		boolean result = false;
		String sql = "insert into Account(username,password)\n" + "values (?,?)";

		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1, account.getUsername());
			pst.setString(2, account.getPassword());
			int affectesRows = pst.executeUpdate();
			result = affectesRows > 0;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
}
