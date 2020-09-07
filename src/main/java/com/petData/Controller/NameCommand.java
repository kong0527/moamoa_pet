package com.petData.Controller;

import javax.validation.constraints.NotEmpty;

public class NameCommand {
	@NotEmpty(message="Select a letter!")
	private String letter;
	private String frequency;
	private int flag;
	
	public String getLetter() {
		return letter;
	}
	public void setLetter(String letter) {
		this.letter = letter;
	}
	public String getFrequency() {
		return frequency;
	}
	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
}
