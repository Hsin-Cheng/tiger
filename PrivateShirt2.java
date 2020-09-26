public class PrivateShirt2 {

  private int shirtID = 0;
  private String description = "-description required-";
  //�� �C��X R=����, B=�Ŧ�, G=���, U=���w
  private ColorCode colorCode = ColorCode.U;
  private double price = 0.0;
  private int quantityInStock = 0;
  private int iamtestinggitNum=10;
  //��getXxx
  public ColorCode getColorCode() {
    return colorCode;
  }
  
  //��setXxx  
  public void setColorCode(ColorCode newCode) {
      colorCode = newCode;
      //�����A�ݭn�����~�B�z�F, �w�� enum �M�w�d��F
  }
  //�� �䥦�� shirtID, description,
  //�� price, and quantityInStock �� get set��k, �Х�ӤW�z���@�k
}