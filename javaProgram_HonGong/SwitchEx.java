package javaDynamicWeb.javaProgram_HonGong;

public class SwitchEx {

	// 스위치, 케이스문
	public static void main(String[] args) {
		
		int paramA = 1;
		
		switch (paramA) {
			case 0:
				System.out.println("0입니다.");
				break;
			case 1:
				System.out.println("1입니다.");
				break;
			case 2:
				System.out.println("2입니다.");
				break;
			case 3:
				System.out.println("3입니다.");
				break;
			case 4:
				System.out.println("4입니다.");
				break;
			case 5:
				System.out.println("5입니다.");
				break;
			case 6:
				System.out.println("6입니다.");
				break;
		}
		
		int paramB = 10;
		switch (paramB) {
		case 0:
		case 1:
			System.out.println("0과1입니다.");
			break;
		case 2:
		case 3:
			System.out.println("2과3입니다.");
			break;
		case 4:
		case 5:
			System.out.println("4과5입니다.");
			break;
			default :
				System.out.println("default입니다.");
				break;
		}
		
		int intCnt = 6;
		if (intCnt % 2 == 0) {
			if (intCnt == 2) {
				System.out.println("int자료가 2입니다.");
			}else {
				System.out.println("int자료가 2가아닙니다.");
			}
		}
		
		int intParamA = 9;
		switch (intParamA) {
		case 0:
			System.out.println("intParamA는 0입니다.");
			break;
		case 1:
			System.out.println("intParamA는 1입니다.");
			break;
		case 2:
			System.out.println("intParamA는 2입니다.");
			break;
		case 3:
			System.out.println("intParamA는 3입니다.");
			break;
		case 4:
			System.out.println("intParamA는 4입니다.");
			break;
		case 5:
			System.out.println("intParamA는 5입니다.");
			break;
		case 6:
			System.out.println("intParamA는 6입니다.");
			break;
		case 7:
			System.out.println("intParamA는 7입니다.");
			break;
		case 8:
			System.out.println("intParamA는 8입니다.");
			break;
		case 9:
			System.out.println("intParamA는 9입니다.");
			break;
			default:
				System.out.println("intParamA는 default입니다.");
				break;
		}
	}
}
