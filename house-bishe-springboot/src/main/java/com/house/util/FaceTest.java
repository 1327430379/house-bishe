package com.house.util;

import javax.net.ssl.SSLException;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;


public class FaceTest {

	 
	public static String decodeUnicode(String theString) {    
        char aChar;    
        int len = theString.length();    
        StringBuffer outBuffer = new StringBuffer(len);    
        for (int x = 0; x < len;) {    
            aChar = theString.charAt(x++);    
            if (aChar == '\\') {    
                aChar = theString.charAt(x++);    
                if (aChar == 'u') {    
                    // Read the xxxx    
                    int value = 0;    
                    for (int i = 0; i < 4; i++) {    
                        aChar = theString.charAt(x++);    
                        switch (aChar) {    
                        case '0':    
                        case '1':    
                        case '2':    
                        case '3':    
                        case '4':    
                        case '5':    
                        case '6':    
                        case '7':    
                        case '8':    
                        case '9':    
                            value = (value << 4) + aChar - '0';    
                            break;    
                        case 'a':    
                        case 'b':    
                        case 'c':    
                        case 'd':    
                        case 'e':    
                        case 'f':    
                            value = (value << 4) + 10 + aChar - 'a';    
                            break;    
                        case 'A':    
                        case 'B':    
                        case 'C':    
                        case 'D':    
                        case 'E':    
                        case 'F':    
                            value = (value << 4) + 10 + aChar - 'A';    
                            break;    
                        default:    
                            throw new IllegalArgumentException(    
                                    "Malformed   \\uxxxx   encoding.");    
                        }    
        
                    }    
                    outBuffer.append((char) value);    
                } else {    
                    if (aChar == 't')    
                        aChar = '\t';    
                    else if (aChar == 'r')    
                        aChar = '\r';    
                    else if (aChar == 'n')    
                        aChar = '\n';    
                    else if (aChar == 'f')    
                        aChar = '\f';    
                    outBuffer.append(aChar);    
                }    
            } else    
                outBuffer.append(aChar);    
        }    
        return outBuffer.toString();    
    }  
	public static void main(String[] args) throws Exception{
		
        File file = new File("1.jpg");
		byte[] buff = getBytesFromFile(file);
		String url = "https://api-cn.faceplusplus.com/cardpp/v1/ocridcard";
        HashMap<String, String> map = new HashMap<>();
        HashMap<String, byte[]> byteMap = new HashMap<>();
        map.put("api_key", "-rmz0oCucWPcvlBv49RErHipvsGlf5DC");
        map.put("api_secret", "kBvsaSkZnp4aYkJeiT4JkIck0PjLOtnJ");
		map.put("return_landmark", "1");
        map.put("return_attributes", "gender,age,smiling,headpose,facequality,blur,eyestatus,emotion,ethnicity,beauty,mouthstatus,eyegaze,skinstatus");
        byteMap.put("image_file", buff);
        try{
            byte[] bacd = post(url, map, byteMap);
            String str = new String(bacd);
            //byte[] bt = str.getBytes("utf-8");    
            String ret = decodeUnicode(str);  
            System.out.println(ret);  
          
         //   test3(ret);
            //System.out.println(str);
        }catch (Exception e) {
        	e.printStackTrace();
		}
	}
	
	private final static int CONNECT_TIME_OUT = 30000;
    private final static int READ_OUT_TIME = 50000;
    private static String boundaryString = getBoundary();
    protected static byte[] post(String url, HashMap<String, String> map, HashMap<String, byte[]> fileMap) throws Exception {
        HttpURLConnection conne;
        URL url1 = new URL(url);
        conne = (HttpURLConnection) url1.openConnection();
        conne.setDoOutput(true);
        conne.setUseCaches(false);
        conne.setRequestMethod("POST");
        conne.setConnectTimeout(CONNECT_TIME_OUT);
        conne.setReadTimeout(READ_OUT_TIME);
        conne.setRequestProperty("accept", "*/*");
        conne.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundaryString);
        conne.setRequestProperty("connection", "Keep-Alive");
        conne.setRequestProperty("user-agent", "Mozilla/4.0 (compatible;MSIE 6.0;Windows NT 5.1;SV1)");
        DataOutputStream obos = new DataOutputStream(conne.getOutputStream());
        Iterator iter = map.entrySet().iterator();
        while(iter.hasNext()){
            Map.Entry<String, String> entry = (Map.Entry) iter.next();
            String key = entry.getKey();
            String value = entry.getValue();
            obos.writeBytes("--" + boundaryString + "\r\n");
            obos.writeBytes("Content-Disposition: form-data; name=\"" + key
                    + "\"\r\n");
            obos.writeBytes("\r\n");
            obos.writeBytes(value + "\r\n");
        }
        if(fileMap != null && fileMap.size() > 0){
            Iterator fileIter = fileMap.entrySet().iterator();
            while(fileIter.hasNext()){
                Map.Entry<String, byte[]> fileEntry = (Map.Entry<String, byte[]>) fileIter.next();
                obos.writeBytes("--" + boundaryString + "\r\n");
                obos.writeBytes("Content-Disposition: form-data; name=\"" + fileEntry.getKey()
                        + "\"; filename=\"" + encode(" ") + "\"\r\n");
                obos.writeBytes("\r\n");
                obos.write(fileEntry.getValue());
                obos.writeBytes("\r\n");
            }
        }
        obos.writeBytes("--" + boundaryString + "--" + "\r\n");
        obos.writeBytes("\r\n");
        obos.flush();
        obos.close();
        InputStream ins = null;
        int code = conne.getResponseCode();
        try{
            if(code == 200){
                ins = conne.getInputStream();
            }else{
                ins = conne.getErrorStream();
            }
        }catch (SSLException e){
            e.printStackTrace();
            return new byte[0];
        }
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] buff = new byte[4096];
        int len;
        while((len = ins.read(buff)) != -1){
            baos.write(buff, 0, len);
        }
        byte[] bytes = baos.toByteArray();
        ins.close();
        return bytes;
    }
    private static String getBoundary() {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for(int i = 0; i < 32; ++i) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-".charAt(random.nextInt("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_".length())));
        }
        return sb.toString();
    }
    private static String encode(String value) throws Exception{
        return URLEncoder.encode(value, "UTF-8");
    }
    
    public static byte[] getBytesFromFile(File f) {
        if (f == null) {
            return null;
        }
        try {
            FileInputStream stream = new FileInputStream(f);
            ByteArrayOutputStream out = new ByteArrayOutputStream(1000);
            byte[] b = new byte[1000];
            int n;
            while ((n = stream.read(b)) != -1)
                out.write(b, 0, n);
            stream.close();
            out.close();
            return out.toByteArray();
        } catch (IOException e) {
        }
        return null;
    }
}