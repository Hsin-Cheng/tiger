/*

����:
  int �]�˦� Integer �٤��� Autoboxing�A�Ϥ��h�O Auto-unboxing�C
  
  �b Java �����K�ذ򥻫��O�A���O�O byte, short, int, long, 
  float, double, char �M boolean�C
  �z�פW�ӻ��A�u��������ɦV�������O���ӳ������O���O�w�q�A
  ���O Short, Integer �������O�C
  ���L���F�ڭ̨ϥΤW����K�AJava ���ѤF�򥻫��O�C
  �P�ɦs�b�o��ث��O�`�`�|�y���ڭ̦b�]�p�W�n�[�W�\�h�B�~���{���X�A
  �Ҧp�b���Ʀr�B��ɡA�ϥ� int �� double ���O�ӳB�z�A
  ���O�n�N�Ʀr�s�J�e���ɡA�����n�N���ഫ�� Integer �� Double ���O�A
  �~��ϥ� add(new Integer(i))�A
  �b�ϥήe���Φh���B�z�ɱ`�`�n�h�@�D�૬����C 
  Java 1.5 ���A�w�g�W�[�F�o�譱���B�z�A
  �٤��� Autoboxing �M Auto-unboxing�A
  �sĶ���|�۰����ڭ̦b int �M Integer �����ഫ�C
 

�`�N:  
  ��switch���Fbyte,short,int�Mchar���~�A��i����Wrapper����
  ���Y�Ǥ@int�ɡA�M��һ�Overloading��k�ɥ���int�A�䦸Wrapper���O�A�A��varargs(��z)
  �����O���Ӥp��
      Integer xx = null;
      int yy = xx;
    �o�ص{���X  

/*
   ��1.���U�O�@��²��Ҥl�G 
*/

//�ӹF�j�ӫӫӫӫӫӫӫӫӫӫӫӫӭ�

public class Autoboxing1 {
  
  public static void main(String[] args) {
	  Integer i1 = 1; //boxing
<<<<<<< HEAD
	  String  i2 = i1;    //unboxing
=======
	  long i2 = i1;    //unboxing
>>>>>>> tiger
		
	  double sum1 = i1 + i2;
	  Integer sum2 = i1 + i2;
	  System.out.println(sum1);
	  System.out.println(sum2);
 }
}