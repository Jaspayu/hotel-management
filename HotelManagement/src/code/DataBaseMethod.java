package code;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class DataBaseMethod {
	
	public ArrayList<Roomlist> getroomlist()
	{
		Connection cnt=Database.getDefaultConnection();
		ArrayList<Roomlist> rlist=new ArrayList<>();
		try {
			Statement stt=cnt.createStatement();
			String qq="select * from roomstatus where status like'a%'";
			
			ResultSet rr=stt.executeQuery(qq);
			while(rr.next()){
				Roomlist rl=new Roomlist();
				rl.setRno(rr.getString("roomno"));
				rl.setType(rr.getString("typeofroom"));
				rl.setRs(rr.getString("price"));
				rl.setSts(rr.getString("status"));
				rlist.add(rl);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return rlist;
		
	}
		
	public ArrayList<Userlist> getuserlist()
	{
		Connection cnt=Database.getDefaultConnection();
		ArrayList<Userlist> ulist=new ArrayList<>();
		try {
			Statement stt=cnt.createStatement();
			String qq="select * from userdetail";
			
			ResultSet rr=stt.executeQuery(qq);
			while(rr.next()){
				Userlist uu=new Userlist();
				uu.setId(rr.getString("id"));
				uu.setUsername(rr.getString("username"));
				uu.setPassword(rr.getString("password"));
				uu.setEmail(rr.getString("email"));
				ulist.add(uu);
				
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return ulist;
		
	}
	public ArrayList<Bookinglist> getbooking( String id)
	{
		Connection cnt=Database.getDefaultConnection();
		ArrayList<Bookinglist> blist=new ArrayList<>();
		try {
			Statement stt=cnt.createStatement();
			String qq="select * from bookings where uid='"+id+"'";
			ResultSet rr=stt.executeQuery(qq);
			while(rr.next()){
				Bookinglist bb=new Bookinglist();
				bb.setUid(rr.getString("uid"));
			    bb.setName(rr.getString("name"));
				bb.setEmail(rr.getString("email"));
				bb.setAddress(rr.getString("address"));
				bb.setContact(rr.getString("contact"));
				bb.setPerson(rr.getString("person"));
				bb.setCheckin(rr.getString("checkin"));
				bb.setCheckout(rr.getString("checkout"));
				blist.add(bb);	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return blist;
		
	}
		
	}


