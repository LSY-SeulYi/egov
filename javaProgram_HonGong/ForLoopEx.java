package javaDynamicWeb.javaProgram_HonGong;

import java.util.ArrayList;

// for문, 반복문
// 자주 쓰임, 조건을 넣어 반복문으로 사용
public class ForLoopEx {

	public static void main(String[] args) {
		
		for(int i = 1; i < 6; i++) {
			System.out.println("i는 " + i + "입니다.");
		}
		System.out.println("=============================================================================");
		int whileCnt = 0;
		while (whileCnt < 5) {
			System.out.println("반복문++ : " + whileCnt++ + " 입니다.");
		}
		whileCnt = 0;
		while (whileCnt < 5) {
			System.out.println("++반복문 : " + ++whileCnt + " 입니다.");
		}
		System.out.println("=============================================================================");
		// 향상된 for문과 ArrayList사용.
		// index 값이 한눈에 보이는 장점이 있음.
		ArrayList<String> strList = new ArrayList<>();
		strList.add("총무부");
		strList.add("회계부");
		strList.add("재무부");
		strList.add("기획부");
		strList.add("인사부");
		for (String dep : strList) {
			System.out.println("부서 : " + dep);
		}
		System.out.println("=============================================================================");
		for(int i = 10; i > 0; i-=2) {
			System.out.println("i는 -=2 : " + i);
		}
		System.out.println("=============================================================================");
		// 구구단
		for(int i = 2; i < 10; i++) {
			for(int j = 1; j < 10; j++){
				System.out.println(i + "단 : "+ i +"*"+j+"="+(i*j));
			}
		}
		System.out.println("=============================================================================");
		for(int i = 0; i < 10; i++) {
			double random = (Math.random()*10);
			System.out.println(i + " : random : "+ random);
		}
		for(int i = 0; i < 10; i++) {
			int random = (int) (Math.random()*10);
			System.out.println(i + " : random : "+ random);
		}
		System.out.println("=============================================================================");
		// for문과 if문을 합쳐서 사용한 로직
		for (int i= 0; i < 10; i++) {
			int getMathRandom = (int) (Math.random()*10);
			System.out.println("getMathRandom : "+ getMathRandom);
			if (getMathRandom % 2 == 0) {
				System.out.println("랜덤값은 짝수입니다.");
				if (getMathRandom % 4 == 0) {
					System.out.println("4로 나누어서 0으로 떨어집니다.");
				}else {
					System.out.println("4로 나누어서 0으로 떨어지지 않습니다.");
					if (getMathRandom % 3 == 0) {
						System.out.println("3으로 나누어서 0으로 떨어집니다.");
					}else {
						System.out.println("3으로 나누어서 0으로 떨어지지 않습니다.");
					}
				}
			}
		}
		System.out.println("=============================================================================");
		StringBuilder sbPlus = new StringBuilder("");
		String[] arrStr = new String[] {"가","나","다","라","마","바","사","아","자","차","카","타","파","하"};
		for (int i = 0; i < 10; i++) {
			int mathRandom = (int) (Math.random()*10);
			System.out.println("랜덤값을 출력 : " + arrStr[mathRandom]);
			sbPlus.append(arrStr[mathRandom]);
		}
		System.out.println("문자열 출력 : " + sbPlus.toString());
	}
}
