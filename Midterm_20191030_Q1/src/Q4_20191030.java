
public class Q4_20191030 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Pet dog = new Pet("강아지", 8);
		Pet cat = new Pet("고양이", 13);
		
		dog.movePet();
		cat.movePet();
		dog.getAge();
		cat.getAge();
	}

}

class Pet{
	private String name;
	private int age;
	
	Pet(String name, int age){
		this.name = name;
		this.age = age;
	}
	
	void movePet() {
		System.out.println(this.name+"가 움직입니다. ");
	}
	void getAge() {
		System.out.println(this.name+"는"+this.age+"개월입니다. ");
	}
}
