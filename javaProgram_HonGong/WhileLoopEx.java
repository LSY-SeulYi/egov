package javaDynamicWeb.javaProgram_HonGong;

// While문, 반복문
public class WhileLoopEx {

	public static void main(String[] args) {
		// while문은 조건 없이 돌아감.
		
		int whileCnt = 0;
		while (whileCnt < 10) {
			whileCnt++;
			System.out.println("while반복문 : "+ whileCnt);
		}
		
		// while문은 break가 없을 경우 무한으로 반복하게 된다.
		int whileEx = 0;
		boolean isTrue = true;
		
		while (isTrue) {
			whileEx++;
			System.out.println("if whileEx는 "+whileEx);
			if (whileEx == 10) {
				break;
			}
		}
		
		// continue는 중간에 끊지 말고 계속 이어서 하라는 것.
		for(int i = 0; i < 10; i++) {
			if (i % 3 == 0) {
				continue;
			}
			System.out.println(i);
		}
	}
}
