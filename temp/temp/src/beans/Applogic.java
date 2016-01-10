package beans;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.connect;


public class Applogic {

	public static ResultSet  checklogin(LoginData l){
		ResultSet rs=null;
		
		try{
		Connection con=connect.getCon();
		PreparedStatement ps=con.prepareStatement("select * from signup where name=? and pass=?");
		ps.setString(1,l.getName());
		ps.setString(2,l.getPass());
		
		 rs=ps.executeQuery();
		
		
		
		
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return rs;
		
	}
	public static ArrayList<answerData> getAnswers(){
		ArrayList<answerData> answer=new ArrayList<answerData>();
		try{
			Connection con=connect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from ansq");
			
			
			ResultSet rs=ps.executeQuery();
			
			
			
			while(rs.next()){
			
				answerData q=new answerData();
			q.setQid(rs.getInt("qid"));
			q.setAnsdetail(rs.getString("ansdetail"));
			q.setUid(rs.getInt("uid"));
			q.setAnstitle(rs.getString("anstitle"));
			q.setQid(Integer.parseInt(rs.getString("qid")));
		answer.add(q);
			}
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return answer;
	}
	
	
	
	
	
	
	public static ArrayList<questionData> getQuestion(){
		ArrayList<questionData> questions=new ArrayList<questionData>();
		try{
			Connection con=connect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from askq");
			
			
			ResultSet rs=ps.executeQuery();
			
			
			
			while(rs.next()){
			
				questionData q=new questionData();
			q.setQid(rs.getInt("qid"));
			q.setQuestion(rs.getString("que"));
			q.setUserid(rs.getInt("uid"));
			q.setQuestionDetails(rs.getString("quedetail"));
			q.setCategory(rs.getString("category"));
		questions.add(q);
			}
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return questions;
	}


	public static void signup(LoginData l,InputStream inputStream) {
		
		try{
			Connection con=connect.getCon();
			PreparedStatement ps=con.prepareStatement("insert into signup(name,email,pass,image) values(?,?,?,?)");
			ps.setString(1,l.getName());
			ps.setString(2,l.getEmail());
			ps.setString(3,l.getPass());
			ps.setBlob(4, inputStream);
			ps.executeUpdate();
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		
	}
	
	public static ArrayList<answerData> QuestionAnswer(int q) {
		Connection con=connect.getCon();
		
		
		System.out.println(con);
		ArrayList<answerData> adata=new ArrayList<answerData>();
		try {
			PreparedStatement ps= con.prepareStatement("select * from ansq where qid=?");
			ps.setInt(1, q);
			ResultSet rs= ps.executeQuery();
			
			
			while(rs.next()){
				answerData q1=new answerData();
				System.out.println("hi");
				q1.setAid(rs.getInt("aid"));
				q1.setQid(rs.getInt("qid"));
				q1.setUid(rs.getInt("uid"));
				q1.setAnstitle(rs.getString("anstitle"));
				q1.setAnsdetail(rs.getString("ansdetail"));
				
adata.add(q1);
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adata;
		
		
		
		
	}


	public static void inputQuestion(questionData que) {
		Connection con = connect.getCon();
		try{
			PreparedStatement ps =con.prepareStatement("insert into askq(que, quedetail, uid, category) values(?,?,?,?) ");
			ps.setString(1, que.getQuestion());
			ps.setString(2, que.getQuestionDetails());
			ps.setInt(3, que.getUserid());
			ps.setString(4, que.getCategory());
			ps.executeUpdate();
			
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public static void inputAnswer(answerData ans) {
		Connection con = connect.getCon();
		try{
			PreparedStatement ps =con.prepareStatement("insert into ansq(anstitle, ansdetail, uid,qid ) values(?,?,?,?) ");
			ps.setString(1, ans.getAnstitle());
			ps.setString(2, ans.getAnsdetail());
			ps.setInt(3, ans.getUid());
			ps.setInt(4, ans.getQid());
			
			
			
			ps.executeUpdate();
			
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	
	public static String fetchName(int uid){
		String name=null;
		try{
		Connection	con =	connect.getCon();
		PreparedStatement ps= con.prepareStatement("select * from signup where uid=?");
		ps.setInt(1, uid);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
		name=rs.getString("name");
		}
		
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return name;
	}
	public static void inputAnswerLike(inputAnswerLike like) {
		try{
			Connection	con =	connect.getCon();
			PreparedStatement ps= con.prepareStatement("insert into anslike(aid,uid,liked) values(?,?,'liked')");
			
			ps.setInt(1, like.getAid());
			ps.setInt(2, like.getUid());
			ps.executeUpdate();
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
	}
	public static ResultSet checkLike(int uid,int aid) {
		ResultSet rs=null;
		try{
			Connection	con =	connect.getCon();
			PreparedStatement ps= con.prepareStatement("select * from anslike where uid=? and aid=?");
			
			ps.setInt(1, uid);
			ps.setInt(2, aid);
		 rs=ps.executeQuery();
			
			System.out.println(rs);
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return rs;
	}
	public static ResultSet checkLike2(int uid,int qid) {
		ResultSet rs=null;
		try{
			Connection	con =	connect.getCon();
			PreparedStatement ps= con.prepareStatement("select * from quelike where uid=? and qid=?");
			
			ps.setInt(1, uid);
			ps.setInt(2, qid);
		 rs=ps.executeQuery();
			
			System.out.println(rs);
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return rs;
	}
	
	public static void inputQuestionLike(InputQuestionLike like) {
		try{
			Connection	con =	connect.getCon();
			PreparedStatement ps= con.prepareStatement("insert into quelike(qid,uid,liked) values(?,?,'liked')");
			
			ps.setInt(1, like.getQid());
			ps.setInt(2, like.getUid());
			ps.executeUpdate();
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
	}
	
	
	public static int numberOfLikes(int aid) {
		ResultSet rs=null;
		int likes=0;
		try{
			Connection	con =	connect.getCon();
			PreparedStatement ps= con.prepareStatement("select * from anslike where aid=?");
			
			ps.setInt(1, aid);
		 rs=ps.executeQuery();
		 
		 while(rs.next()){
			 likes++;
		 }
			
			System.out.println(rs);
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return likes;
	}
	
	public static int numberOfLikesQ(int qid) {
		ResultSet rs=null;
		int likes=0;
		try{
			Connection	con =	connect.getCon();
			PreparedStatement ps= con.prepareStatement("select * from quelike where qid=?");
			
			ps.setInt(1, qid);
		 rs=ps.executeQuery();
		 
		 while(rs.next()){
			 likes++;
		 }
			
			System.out.println(rs);
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return likes;
	}
	
	
	
	public static ArrayList<questionData> getMyQuestions(int uid){
		ArrayList<questionData> questions=new ArrayList<questionData>();
		try{
			Connection con=connect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from askq where uid=?");
			ps.setInt(1, uid);
			
			ResultSet rs=ps.executeQuery();
			
			
			
			while(rs.next()){
			
				questionData q=new questionData();
			q.setQid(rs.getInt("qid"));
			q.setQuestion(rs.getString("que"));
			q.setUserid(rs.getInt("uid"));
			q.setQuestionDetails(rs.getString("quedetail"));
		questions.add(q);
			}
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return questions;
	}
	public static void DeleteMyQuestion(int qid) {
		try{
			Connection con = connect.getCon();
			PreparedStatement ps = con.prepareStatement("delete from askq where qid=?");
			ps.setInt(1, qid);
			PreparedStatement ps2 = con.prepareStatement("delete from ansq where qid=?");
			ps2.setInt(1, qid);
			ps.executeUpdate();
			ps2.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	

	
	
}
