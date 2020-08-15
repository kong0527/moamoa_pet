package com.petData.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class Letter {
	private char letter;
	private String label;
	
	public Letter() {
		super();
	}

	public char getLetter() {
		return letter;
	}

	public void setLetter(char letter) {
		this.letter = letter;
	}

	public Letter(char letter, String label) {
		super();
		this.letter = letter;
		this.label = label;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
	
	public List<Letter> generateK() {
		List<Letter> letter = new ArrayList<Letter>();
		
		for (int i = 'ㄱ'; i <= 'ㅎ'; i++) {
			letter.add((new Letter((char)i, (char)i + "　")));
		}
		
		//for (int i = 0x1100; i <= 0x1112; i++) {
			//letter.add((new Letter((char)i, (char)i + "　")));
		//}
				
		return letter;
	}
	
	public List<Letter> generateE() {
		List<Letter> letter = new ArrayList<Letter>();
		
		for (int i = 65; i <= 90; i++) {
			letter.add((new Letter((char)i, (char)i + "　")));
		}
				
		return letter;
	}
	
}
