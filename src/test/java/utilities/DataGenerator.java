package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class DataGenerator {
    public static Map<String,Object> createUser(){

        Faker faker = new Faker();

        String  name = faker.name().firstName();
        String gender = faker.demographic().sex();
        long phone = Long.parseLong(faker.numerify("##########"));

        Map<String,Object> newUser = new HashMap<>();
        newUser.put("name",name);
        newUser.put("gender",gender);
        newUser.put("phone",phone);

        return newUser;
    }
    public static String generateFakeAccountName(){
        Faker faker = new Faker();
        String firstName = faker.name().firstName();
        String lastName = faker.name().lastName();
        String fullName = firstName + " " + lastName;
        return fullName;
    }

    public static int generateRandomAmount(){
        Random rnd = new Random();
        int randomNumber=rnd.nextInt(900)+100;
        //String randomAccountNumber = String.valueOf(randomNumber);
        //out.println("randomNumber = " + randomNumber);
        return randomNumber;
    }
    public static String generateRandomAccountNumber(){
        int digit = 8;
        int m = (int) Math.pow(10, digit - 1);
        int randomAccNumber=m+ new Random().nextInt(9 * m);
        String randomAccountNumber = String.valueOf(randomAccNumber);
        //out.println("randomAccountNumber = " + randomAccountNumber);
        return randomAccountNumber;

    }
    public static String generateRandomSortNumber(){
        int digit = 6;
        int m = (int) Math.pow(10, digit - 1);
        int randomAccNumber=m+ new Random().nextInt(9 * m);
        String randomAccountNumber = String.valueOf(randomAccNumber);
        //out.println("randomSortNumber = " + randomAccountNumber);
        return randomAccountNumber;
    }
}
