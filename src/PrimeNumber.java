
public class PrimeNumber {
	public static void main(String[] args) {
		PrimeNumber p = new PrimeNumber();
		p.generateNumber();
	}

	public void generateNumber() {
		for (int i = 0; i < 5; i++) {

			int ran = (int) (Math.random() * 100 + 1);
			if (ran == 1) {
				System.out.println(ran+" 不是質數");
			} else if (ran == 3 || ran == 2) { // Math.sqrt(3)<2 會出事!!!
				System.out.println(ran + "是質數");
			}
			
			int sRan = (int) Math.sqrt(ran);
			for (int j = 2; j <= sRan; j++) {
				if (ran % j == 0) {
					System.out.println(ran+" 不是質數");
					break;
				} else if (j == sRan) {
					System.out.println(ran + " 是質數");
				}
			}
		}
	}
}
