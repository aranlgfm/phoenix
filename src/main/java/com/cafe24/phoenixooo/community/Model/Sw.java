package com.cafe24.phoenixooo.community.Model;

public class Sw {
	private String swCode;
	private String swName;
	private int swWon;
	private int swTerm;
	
	public String getSwCode() {
		return swCode;
	}
	public void setSwCode(String swCode) {
		this.swCode = swCode;
	}
	public String getSwName() {
		return swName;
	}
	public void setSwName(String swName) {
		this.swName = swName;
	}
	public int getSwWon() {
		return swWon;
	}
	public void setSwWon(int swWon) {
		this.swWon = swWon;
	}
	public int getSwTerm() {
		return swTerm;
	}
	public void setSwTerm(int swTerm) {
		this.swTerm = swTerm;
	}
	
	
	@Override
	public String toString() {
		return "Sw [swCode=" + swCode + ", swName=" + swName + ", swWon=" + swWon + ", swTerm=" + swTerm + "]";
	}
}
