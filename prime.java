public class PrimeNumbers {

    public static void main(String[] args) {
        int limit = 50;
        System.out.println("Prime numbers up to " + limit + ": " + generatePrimes(limit));
    }

    public static boolean isPrime(int num) {
        if (num <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static String generatePrimes(int limit) {
        StringBuilder primes = new StringBuilder();
        for (int num = 2; num <= limit; num++) {
            if (isPrime(num)) {
                primes.append(num).append(" ");
            }
        }
        return primes.toString();
    }
}

