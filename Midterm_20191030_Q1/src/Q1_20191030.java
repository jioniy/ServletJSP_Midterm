import java.util.*;
public class Q1_20191030 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.printf("##교환할 돈은 ?");
		Scanner scan = new Scanner(System.in); // Scanner 객체
		int total = scan.nextInt();
		int change_500 = total/500;
		int change_100 = (total%500)/100;
		int change_50 = ((total%500)%100)/50;
		int change_10 = (((total%500)%100)%50)/10;
		int change = (((total%500)%100)%50)%10;
		System.out.printf("오백원짜리 ==> %d 개\n", change_500);
		System.out.printf("백원짜리 ==> %d 개\n", change_100);
		System.out.printf("오십원짜리 ==> %d 개\n", change_50);
		System.out.printf("십원짜리 ==> %d 개\n", change_10);
		System.out.printf("바꾸지 못한 잔돈==> %d 원\n", change);
	}

}
