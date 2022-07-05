
package plantkartbean;


public class PlantOrderBean {
  
  private  String email,plantName,PlantDetail;
  private  int plantId,price,discount,total,quantity;

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the plantName
     */
    public String getPlantName() {
        return plantName;
    }

    /**
     * @param plantName the plantName to set
     */
    public void setPlantName(String plantName) {
        this.plantName = plantName;
    }

    /**
     * @return the PlantDetail
     */
    public String getPlantDetail() {
        return PlantDetail;
    }

    /**
     * @param PlantDetail the PlantDetail to set
     */
    public void setPlantDetail(String PlantDetail) {
        this.PlantDetail = PlantDetail;
    }

    /**
     * @return the plantId
     */
    public int getPlantId() {
        return plantId;
    }

    /**
     * @param plantId the plantId to set
     */
    public void setPlantId(int plantId) {
        this.plantId = plantId;
    }

    /**
     * @return the price
     */
    public int getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(int price) {
        this.price = price;
    }

    /**
     * @return the discount
     */
    public int getDiscount() {
        return discount;
    }

    /**
     * @param discount the discount to set
     */
    public void setDiscount(int discount) {
        this.discount = discount;
    }

    /**
     * @return the total
     */
    public int getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(int total) {
        this.total = total;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
  
  
    
}
