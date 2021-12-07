package javaDynamicWeb.javaProgram_HonGong;

// if문, 조건문
public class IfEx {

	public static void main(String[] args) {
		
		// 주어진 값 없이 if 값만 있을 경우 참 값만 출력 됨.
		if (true) {
			System.out.println("true입니다.");
		}
		if (false) {
			System.out.println("false입니다.");
		}
		if (true) {
			System.out.println("ifelse true입니다.");
		}
		else if (false) {
			System.out.println("ifelse false입니다.");
		}
System.out.println("====================================================================");
		
		// 주어진 값이 있는 경우 그 주어진 값과 if ~ else if 문을 모두 비교해 보고 참 인 값으로 출력이 됨.
		// if ~ else if 문이 모두 다 참인 경우 제일 처음 값이 출력됨.
		// if ~ else if 문이 모두 다 거짓인 경우 아무 값도 출력 되지 않음.
		int paramA = 1;
		if (paramA == 2) {
			System.out.println("첫 번째 if입니다.");
		}else if (paramA == 1) {
			System.out.println("두 번째 else입니다.");
		}
		int paramB = 1;
		if (paramB == 1) {
			System.out.println("첫 번째 참입니다.");
		}else if (paramB == 1) {
			System.out.println("두 번째 참입니다.");
		}
		int paramBB = 1;
		if (paramBB == 2) {
			System.out.println("첫 번째 거짓입니다.");
		}else if (paramBB == 3) {
			System.out.println("두 번째 거짓입니다.");
		}else if (paramBB == 4) {
			System.out.println("세 번째 거짓입니다.");
		}else if (paramBB == 5) {
			System.out.println("네 번째 거짓입니다.");
		}
System.out.println("====================================================================");
		
		// if, else 문은 둘 중 한가지의 값이 출력 되게 하는 것.
		// 주어진 값과 if문을 비교했을 때 참의 값이 없는 경우 else값이 출력 된다.
		int paramC = 1;
		if (paramC == 2) {
			System.out.println("paramC는 2");
		}else if (paramC == 3) {
			System.out.println("paramC는 3");
		}else {
			System.out.println("paramC는 1");
		}
		int paramD = 1;
		if (paramA == 2) {
			System.out.println("paramD는 2입니다.");
		}else {
			System.out.println("paramD는 else문입니다.");
		}
		int productionRatio = 35;	// 생산율 35%
		if (productionRatio > 70) {
			System.out.println("회사 사정이 아주 좋습니다.");
		}if (productionRatio > 50) {
			System.out.println("회사가 조금 위험합니다.");
		}if (productionRatio > 30) {
			System.out.println("회사가 많이 위험합니다.");
		}else {
			System.out.println("회사가 망할지도 모릅니다...");
		}
	}
}
