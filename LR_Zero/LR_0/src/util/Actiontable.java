package util;

import java.util.ArrayList;

public class Actiontable 
{
	Action a = new Action();
	int at;
	String t;
	ArrayList<Action> ta;
	ArrayList<String> vc;
	public int getAt() {
		return at;
	}
	public void setAt(int at) {
		this.at = at;
	}
	public String getT() {
		return t;
	}
	public void setT(String t) {
		this.t = t;
	}
	public ArrayList<Action> getTa() {
		return ta;
	}
	public void setTa(ArrayList<Action> ta) {
		this.ta = ta;
	}
	public ArrayList<String> getVc() {
		return vc;
	}
	public void setVc(ArrayList<String> vc) {
		this.vc = vc;
	}
	public Actiontable()
	{
		
	}
	
}
