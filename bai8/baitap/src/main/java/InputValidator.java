public class InputValidator {
    public static void validateInputs(String productDescription, String listPriceStr, String discountPercentStr) throws IllegalArgumentException {
        if (productDescription == null || productDescription.trim().isEmpty()) {
            throw new IllegalArgumentException("Product description cannot be empty.");
        }

        if (listPriceStr == null || discountPercentStr == null || listPriceStr.trim().isEmpty() || discountPercentStr.trim().isEmpty()) {
            throw new IllegalArgumentException("List price and discount percent are required.");
        }

        try {
            double listPrice = Double.parseDouble(listPriceStr);
            double discountPercent = Double.parseDouble(discountPercentStr);

            if (listPrice < 0) {
                throw new IllegalArgumentException("List price cannot be negative.");
            }

            if (discountPercent < 0 || discountPercent > 100) {
                throw new IllegalArgumentException("Discount percent must be between 0 and 100.");
            }
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("List price and discount percent must be valid numbers.");
        }
    }
}
