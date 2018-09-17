package ExamplePackage;
import java.io.*;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.*;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 



import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;

public class UploadServlet extends HttpServlet {
   
   private boolean isMultipart;
   private String filePath;
   private int maxFileSize = 50 * 1024;
   private int maxMemSize = 4 * 1024;
   private File file ;
   KeyGenerator keyGenerator = null;  
   SecretKey secretKey = null;  
   Cipher cipher = null;  
 
   public UploadServlet() {  
       try {  
           /** 
            * Create a Blowfish key 
            */  
           keyGenerator = KeyGenerator.getInstance("Blowfish");  
           secretKey = keyGenerator.generateKey();  
 
           /** 
            * Create an instance of cipher mentioning the name of algorithm 
            *     - Blowfish 
            */  
           cipher = Cipher.getInstance("Blowfish");  
       } catch (NoSuchPaddingException ex) {  
           System.out.println(ex);  
       } catch (NoSuchAlgorithmException ex) {  
           System.out.println(ex);  
       }  
   }  

   public void init( ){
      // Get the file location where it would be stored.
      filePath = 
             getServletContext().getInitParameter("file-upload"); 
   }
   public void doPost(HttpServletRequest request, 
               HttpServletResponse response)
              throws ServletException, java.io.IOException {
      // Check that we have a file upload request
      isMultipart = ServletFileUpload.isMultipartContent(request);
      response.setContentType("text/html");
      java.io.PrintWriter out = response.getWriter( );
      if( !isMultipart ){
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet upload</title>");  
         out.println("</head>");
         out.println("<body>");
         out.println("<p>No file uploaded</p>"); 
         out.println("</body>");
         out.println("</html>");
         return;
      }
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );

      try{ 
      // Parse the request to get file items.
      List fileItems = upload.parseRequest(request);
	
      // Process the uploaded file items
      Iterator i = fileItems.iterator();

      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      while ( i.hasNext () ) 
      {
         FileItem fi = (FileItem)i.next();
         if ( !fi.isFormField () )	
         {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            String contentType = fi.getContentType();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
               file = new File( filePath + 
               fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
               file = new File( filePath + 
               fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( file ) ;
            out.println("Uploaded Filename: " + fileName + "<br>");
            String fileToEncrypt = "5thSem.docx";  
            String encryptedFile = "encryptedFile.png";  
            String decryptedFile = "decryptedFile.txt";  
            String directoryPath = "C:/apache-tomcat-7.0.34/webapps/data/";  
            EncryptFile encryptFile = new EncryptFile();  
            System.out.println("Starting Encryption...");  
            encrypt(directoryPath + fileToEncrypt,  
                    directoryPath + encryptedFile);  
            System.out.println("Encryption completed...");  
         }
      }
      out.println("</body>");
      out.println("</html>");
   }catch(Exception ex) {
       System.out.println(ex);
   }
   }
   
   public void doGet(HttpServletRequest request, 
                       HttpServletResponse response)
        throws ServletException, java.io.IOException {
        
        throw new ServletException("GET method used with " +
                getClass( ).getName( )+": POST method required.");
   } 
   private void encrypt(String srcPath, String destPath) {  
       File rawFile = new File(srcPath);  
       File encryptedFile = new File(destPath);  
       InputStream inStream = null;  
       OutputStream outStream = null;  
       try {  
           /** 
            * Initialize the cipher for encryption 
            */  
           cipher.init(Cipher.ENCRYPT_MODE, secretKey);  
           /** 
            * Initialize input and output streams 
            */  
           inStream = new FileInputStream(rawFile);  
           outStream = new FileOutputStream(encryptedFile);  
           byte[] buffer = new byte[1024];  
           int len;  
           while ((len = inStream.read(buffer)) > 0) {  
               outStream.write(cipher.update(buffer, 0, len));  
               outStream.flush();  
           }  
           outStream.write(cipher.doFinal());  
           inStream.close();  
           outStream.close();  
       } catch (IllegalBlockSizeException ex) {  
           System.out.println(ex);  
       } catch (BadPaddingException ex) {  
           System.out.println(ex);  
       } catch (InvalidKeyException ex) {  
           System.out.println(ex);  
       } catch (FileNotFoundException ex) {  
           System.out.println(ex);  
       } catch (IOException ex) {  
           System.out.println(ex);  
       }  
   }  
}