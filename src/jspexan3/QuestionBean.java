package jspexan3;

import java.io.Serializable;

public class QuestionBean implements Serializable {
	private int question =3;
	private String ans1;
	private String ans2;
	private String ans3;
	private String tans1;
	private String tans2;
	private String tans3;


	public String getAns1() {
		return ans1;
	}

	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}

	public String getAns2() {
		return ans2;
	}

	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}

	public String getAns3() {
		return ans3;
	}

	public void setAns3(String ans3) {
		this.ans3 = ans3;
	}

	public String getTans1() {
		return tans1;
	}

	public void setTans1(String tans1) {
		this.tans1 = tans1;
	}

	public String getTans2() {
		return tans2;
	}

	public void setTans2(String tans2) {
		this.tans2 = tans2;
	}

	public String getTans3() {
		return tans3;
	}

	public void setTans3(String tans3) {
		this.tans3 = tans3;
	}
	public int getquestion(){
		return question;
	}

	public boolean jach1() {
		return (ans1 != null && ans1.equals(tans1)) ;
	}
	public boolean jach2(){
		return (ans2 != null && ans2.equals(tans2)) ;
	}
	public boolean jach3(){
		return (ans3 != null && ans3.equals(tans3));
	}
	public int getanss(){
	int anss=0;
	if(jach1()){
		anss++;
	}
	if(jach2()){
		anss++;
	}
	if(jach3()){
		anss++;
	}
	return anss;
}
}
