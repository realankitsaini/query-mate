package beans;

public class questionData {
	int qid;
	String Question;
	String QuestionDetails;
	String category;
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getQuestionDetails() {
		return QuestionDetails;
	}
	public void setQuestionDetails(String questionDetails) {
		QuestionDetails = questionDetails;
	}
	int userid;
	
	String time;
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getQuestion() {
		return Question;
	}
	public void setQuestion(String question) {
		Question = question;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}

	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
