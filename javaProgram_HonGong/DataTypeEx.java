package javaDynamicWeb.javaProgram_HonGong;

/*	
 	변수명을 사용할 때 주의 사항.
	1. 대소문자 구분 되며, 길이의 제한이 없어야 한다.
	2. 예약어를 사용하면 안된다.
	3. 숫자로 시작하면 안된다.
	4. 특수문자는 _와 $만 허용된다.
	5. 낙타등 표기법으로 입력.
	6. 연관된 단어로 조합.
*/
public class DataTypeEx {
/*
	자바 자료형
	1. 자바의 자료형은 기본형과 참조형이 있다.
	2. 기본형 : boolean, char, byte, short, int, long, float, double
	3. 기본형 8가지 이외는 참조형.
	4. 기본형 변수는 자료형이라하고 참조형 변수는 타입이라 한다.
*/	
	public static void main(String[] args) {
		
		// 기본형
		boolean a 	= true;
		char b 		= 'a';
		byte c 		= 1;
		short d 	= 2;
		int e 		= 10;
		long f 		= 123123L;
		float g 	= 3.5474f;
		double h 	= 3000000;
		
		System.out.println("a의 값은 " + a + "이다.");
		
		// 참조형
//		Data data = new Data();
	}
}
