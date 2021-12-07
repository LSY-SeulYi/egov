package javaDynamicWeb.javaProgram_HonGong;

import java.util.ArrayList;

public class ArrayEx {

	// 배열
	public static void main(String[] args) {
		
		// 자바 기본 배열 기법
		int[] arrA = new int[] {1,2,3,4,5};
		int[] arrB = new int[5];
		arrB[0] = 1;
		arrB[1] = 2;
		arrB[2] = 3;
		arrB[3] = 4;
		arrB[4] = 5;
		
		// 배열을 리스트 형식으로 사용하면 훨씬더 코딩이 쉽고 편리함.
		ArrayList<Integer> sampleIntList = new ArrayList<Integer>();
		sampleIntList.add(1);
		sampleIntList.add(2);
		
		System.out.println("배열출력 : " + arrA[2]);
		System.out.println("배열출력 : " + arrB[4]);
		System.out.println(sampleIntList);
	}
}
