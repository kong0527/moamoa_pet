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
			// 해당 조건은 '종성' 에 해당하기 때문에 ㄳ , ㄵ, ㄶ 같은 것들을 제거하기 위한 if문
			// 초성의 경우 유니코드로 표현하는데, view에 나타나는 모양이 조금 다르기 때문에 이렇게 처리
			if (i == 12595 || i == 12597 || i == 12598 || i == 12602 || i == 12603 ||
					i == 12604 || i == 12605 || i == 12606 || i == 12607 || i == 12608 || i == 12612) {
				continue;
			}
			letter.add((new Letter((char)i, (char)i + "　")));
		}
		
		//for (int i = 0x1100; i <= 0x1112; i++) {
			//letter.add((new Letter((char)i, (char)i + "　")));
		//}
				
		return letter;
	}
	
	public List<Letter> generateE() {
		List<Letter> letter = new ArrayList<Letter>();
		
//		아스키코드를 이용해서 문자 가지고 오기
		for (int i = 65; i <= 90; i++) {
			letter.add((new Letter((char)i, (char)i + "　")));
		}
				
		return letter;
	}
	
	public int checkLetter(int letter) {
		if (letter >= 65 && letter <= 90) {
			return 1;
		}
		else {
			return 2;
		}
	}
	
}
