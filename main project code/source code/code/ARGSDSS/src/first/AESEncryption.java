package first;
import java.io.File;
import java.util.Scanner;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.xml.bind.DatatypeConverter;
 
/**
 * This example program shows how AES encryption and decryption can be done in Java.
 * Please note that secret key and encrypted text is unreadable binary and hence 
 * in the following program we display it in hexadecimal format of the underlying bytes.
 * @author Jayson
 */
public class AESEncryption {
  
    /**
     * 1. Generate a plain text for encryption
     * 2. Get a secret key (printed in hexadecimal form). In actual use this must 
     * by encrypted and kept safe. The same key is required for decryption.
     * 3. 
     */
    public static void main(String[] args) throws Exception
    {
    	
    	
    	//  C:/users/TEMP.YMTS.007/Desktop/penguins.txt
		/*
		 * String plainText =""; File myObj = new
		 * File("C:/users/TEMP.YMTS.007/Desktop/logo.jpg"); Scanner myReader = new
		 * Scanner(myObj); while (myReader.hasNextLine()) { plainText=
		 * myReader.nextLine(); System.out.println(plainText); }
		 */
    	String plainText = "Hello World";
        
        KeyGenerator generator = KeyGenerator.getInstance("AES");
        generator.init(128); // The AES key size in number of bits
        SecretKey secKey = generator.generateKey();
        
        
        Cipher aesCipher = Cipher.getInstance("AES");
        aesCipher.init(Cipher.ENCRYPT_MODE, secKey);
        byte[] cipherText = aesCipher.doFinal(plainText.getBytes());

        
        
        
        Cipher aesCipher1 = Cipher.getInstance("AES");
        aesCipher1.init(Cipher.DECRYPT_MODE, secKey);
        byte[] bytePlainText = aesCipher1.doFinal(cipherText);
        
        String decryptedText = new String(bytePlainText);
         
        System.out.println("Original Text:" + plainText);
        
        
        
     //   System.out.println("AES Key (Hex Form):"+bytesToHex(secKey.getEncoded()));
        
        
        System.out.println("AES Key (Hex Form):"+DatatypeConverter.printHexBinary(secKey.getEncoded()));
        System.out.println("Encrypted Text (Hex Form):"+DatatypeConverter.printHexBinary(cipherText));
        
        
//        System.out.println("Encrypted Text (Hex Form):"+bytesToHex(cipherText));
        System.out.println("Descrypted Text:"+decryptedText);
         
    }
   
}
    /**
     * gets the AES encryption key. In your actual programs, this should be safely
     * stored.
     * @return
     * @throws Exception 
     */
    
    /**
     * Encrypts plainText in AES using the secret key
     * @param plainText
     * @param secKey
     * @return
     * @throws Exception 
     */

    /**
     * Decrypts encrypted byte array using the key used for encryption.
     * @param byteCipherText
     * @param secKey
     * @return
     * @throws Exception 
     */
  
    /**
     * Convert a binary byte array into readable hex form
     * @param hash
     * @return 
     */
    