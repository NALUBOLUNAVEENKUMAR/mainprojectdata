import java.util.*;

import org.zeroturnaround.zip.ZipUtil;

import java.io.*;
public class Compress {

public static void main(String[] args) {
	
	ZipUtil.pack(new File("D:\\\\December2021\\\\ARGSDSS\\\\WebContent\\\\Documents"), new File("D:\\\\December2021\\\\ARGSDSS\\\\WebContent\\\\a.zip"));
	
//	ZipUtil.pack(new File("D:\\December2021\\ARGSDSS\\WebContent\\Documents\\"), new File("D:\\December2021\\ARGSDSS\\WebContent\\a.zip"));

}
}
