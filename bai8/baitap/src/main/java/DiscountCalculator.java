public class DiscountCalculator {
    public static double calculateDiscountAmount(double listPrice, double discountPercent) {
        return listPrice * discountPercent * 0.01;
    }

    public static double calculateDiscountPrice(double listPrice, double discountAmount) {
        return listPrice - discountAmount;
    }
}
