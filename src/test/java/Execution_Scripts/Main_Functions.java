package Execution_Scripts;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import gherkin.formatter.Reporter;
import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;
import org.apache.xmlbeans.impl.xb.xsdschema.Public;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.*;
import org.openqa.selenium.Point;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.imageio.ImageIO;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.net.URL;
import java.sql.Driver;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import io.appium.java_client.android.AndroidDriver;
import  org.openqa.selenium.remote.DesiredCapabilities;
import java.util.function.*;
import java.util.function.Function;
import java.util.logging.LogManager;



public class Main_Functions {


    ;

    /**
     * Created by Daisy Kopano
     * 13 March 2019
     */

    public static WebDriver driver;
    public String BP_VALUE = "";



    public static Properties load_Global_Variables() throws IOException {

        FileInputStream file = new FileInputStream(System.getProperty("user.dir") + "\\src\\test\\java\\Global_Variables\\Variables.properties");
        Properties prop = new Properties();
        prop.load(file);
        return prop;

    }

    public static Properties load_credentials() throws IOException {

        FileInputStream file = new FileInputStream(System.getProperty("user.dir") + "\\src\\test\\java\\objects\\Credentials.properties");
        Properties prop = new Properties();
        prop.load(file);
        return prop;

    }


    public void open_Browser(String choose_Browser, String url) throws IOException, InterruptedException {

        try {
            File file;
            if (choose_Browser.equalsIgnoreCase("IE")) {
                file = new File("SeleniumDrivers/IEDriverServer.exe");
                System.setProperty("webdriver.ie.driver", file.getAbsolutePath());
                // DesiredCapabilities caps = DesiredCapabilities.internetExplorer();
                //caps.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS,true);
                driver = new InternetExplorerDriver();
                driver.get("");
                driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                driver.manage().window().maximize();

                if (load_Global_Variables().getProperty("ISOMETRIX_URL").equals(url)) {
                    driver.get(load_Global_Variables().getProperty("ISOMETRIX_URL"));
                } else if (load_Global_Variables().getProperty("").equals(url)) {
                    driver.get(load_Global_Variables().getProperty(""));
                } else if (load_Global_Variables().getProperty("").equals(url)) {
                    driver.get(load_Global_Variables().getProperty(""));
                } else {
                    driver.get(load_Global_Variables().getProperty(""));
                }
                //click_Button(load_project_objects().getProperty("IE_CONTINUE"));


            } else if (choose_Browser.equalsIgnoreCase("Chrome")) {
                file = new File("SeleniumDrivers/chromedriver.exe");
                System.setProperty("webdriver.chrome.driver", file.getAbsolutePath());
                ChromeOptions options = new ChromeOptions();
                options.setExperimentalOption("useAutomationExtension", false);
                driver = new ChromeDriver(options);
//                driver = new ChromeDriver();
                driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                driver.manage().window().maximize();
                //driver.get(" ");
                if (load_Global_Variables().getProperty("ISOMETRIX_URL").equals(url)) {
                    driver.get(load_Global_Variables().getProperty("ISOMETRIX_URL"));
                } else if (load_Global_Variables().getProperty("ISOMETRIX_URL").equals(url)) {
                    driver.get(load_Global_Variables().getProperty(""));
                } else if (load_Global_Variables().getProperty("").equals(url)) {
                    driver.get(load_Global_Variables().getProperty(""));
                } else {
                    driver.get(load_Global_Variables().getProperty(""));
                }


// click_Button(load_project_objects().getProperty("IE_CONTINUE"));
            }


        } catch (Exception e) {
        }
    }


    public void click_Button(String button_object) throws InterruptedException, IOException {
        elementToBeClickable_id(button_object);
        WebElement element = driver.findElement(By.id(button_object));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().perform();
    }

    public void click_Button_xpath(String button_object) throws InterruptedException, IOException {
        elementToBeClickable_xpath(button_object);
        WebElement element = driver.findElement(By.xpath(button_object));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().perform();

    }

    public void click_Button_name(String button_object) throws InterruptedException, IOException {
        elementToBeClickable_xpath(button_object);
        WebElement element = driver.findElement(By.name(button_object));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().perform();

    }


    public void input_Field(String value_id, String value) throws InterruptedException, IOException {
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.xpath(value_id)));
        driver.findElement(By.xpath(value_id)).sendKeys(value);

    }

    public void input_Field_id(String value_id, String value) throws InterruptedException, IOException {
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.id(value_id)));
        driver.findElement(By.id(value_id)).sendKeys(value);

    }

    public static void elementToBeClickable_id(String value_id) throws IOException {
        new WebDriverWait(driver, 60).until(ExpectedConditions.elementToBeClickable(By.id(value_id)));
    }


    public static void elementToBeClickable_xpath(String value_id) throws IOException {
        new WebDriverWait(driver, 60).until(ExpectedConditions.elementToBeClickable(By.xpath(value_id)));
    }


    public static void elementToBeClickable_ByName(String value_id) throws IOException {
        new WebDriverWait(driver, 60).until(ExpectedConditions.elementToBeClickable(By.name(value_id)));

    }

    public static void Upload_File() throws IOException {
        WebElement element = driver.findElement(By.name("datafile"));
        element.sendKeys("C:\\AutomationQA\\Documents\\HackJam.pdf");

    }

    public void select_by_position(String value_id) throws InterruptedException, IOException {
        Thread.sleep(3000);
        new WebDriverWait(driver, 60).until(ExpectedConditions.elementToBeClickable(By.xpath(value_id)));
        click_Button_xpath(value_id);
    }

    public static void addScreenshot(String screenshot_folder) throws IOException,

            ClassNotFoundException, InterruptedException {
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
        String imageName = timeStamp + ".png";
        File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(scrFile, new File("C:\\Users\\Punith.Keshav\\Documents\\ISO work\\Anglo\\Test Automation\\Cucumber\\Automation_V4_Anglo\\Automation_V4_Anglo\\Screenshots\\Pass_ResultsScreenshots" + screenshot_folder + "\\" + imageName));
    }

    public static void FailedScreenshot(String step_name, String screenshot_folder) throws IOException,

            ClassNotFoundException, InterruptedException {
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
        String imageName = timeStamp + ".png";
        File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(scrFile, new File("C:\\Users\\Punith.Keshav\\Documents\\ISO work\\Anglo\\Test Automation\\Cucumber\\Automation_V4_Anglo\\Automation_V4_Anglo\\Screenshots\\Fail_ResultsScreenshots" + screenshot_folder + "\\" + step_name + imageName));
    }


    public boolean isFileDownloaded(String downloadPath, String fileName) {
        File dir = new File(downloadPath);
        File[] dirContents = dir.listFiles();
        for (int i = 0; i < dirContents.length; i++) {
            if (dirContents[i].getName().equals(fileName)) {
                // File has been found, it can now be deleted:
                dirContents[i].delete();
                return true;
            }
        }
        return false;
    }

    public String Get_Text(String value_id) throws InterruptedException, IOException {
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.xpath(value_id)));
        return driver.findElement(By.xpath(value_id)).getAttribute("value");
    }


    //public void ByPixel() {
    public void ByPixel(String value_id) throws InterruptedException, IOException {

        JavascriptExecutor js = (JavascriptExecutor) driver;


        js.executeScript("window.scrollBy(1000,0)");
    }

    public void dropdown_Value(String Tab) throws InterruptedException, IOException {
        WebElement selectTab = driver.findElement(By.xpath(load_Global_Variables().getProperty("")));
        Select select_Tab = new Select(selectTab);
        select_Tab.selectByVisibleText(Tab);
    }


    public void drop_down_select_visible_text(String select_value_id, String select_value) throws InterruptedException, IOException {
        WebElement transfer_currency = driver.findElement(By.xpath(select_value_id));
        Select select_currency = new Select(transfer_currency);
        select_currency.selectByVisibleText(select_value);
    }



    public void Clickbycordinate(String object_id) throws InterruptedException, IOException {
        new WebDriverWait(driver, 300).until(ExpectedConditions.elementToBeClickable(By.xpath(object_id)));
        WebElement element = driver.findElement(By.xpath(object_id));
        Point point = element.getLocation();
        int xcord1 = point.getX();
        int ycord1 = point.getY();
        JavascriptExecutor executor1 = (JavascriptExecutor) driver;
        executor1.executeScript("window.scroll(" + xcord1 + ", " + ycord1 + ");", new Object[0]);
        executor1.executeScript("arguments[0].click();", new Object[]{element});


    }

    public void sendmails() throws IOException {

        //Get properties object
        Properties props = new Properties();
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");
        props.put("mail.smtp.host", "WEBSMTP");
        //192.168.0.6
        //
        props.put("mail.smtp.port", "25");
        //get Session
        Session session = Session.getDefaultInstance(props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("", "");
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(""));


            message.addRecipient(Message.RecipientType.TO, new InternetAddress(""));


            message.setSubject("AutomationQA Healthcheck Results");
            //message.setText("Please find the attached");
            MimeBodyPart messageBodyPart = new MimeBodyPart();

            Multipart multipart = new MimeMultipart();

            messageBodyPart = new MimeBodyPart();
            String file = "ResultsScreenshots.zip";
            String fileName = "ResultsScreenshots.zip";
            DataSource source = new FileDataSource(file);
            messageBodyPart.setDataHandler(new DataHandler(source));
            messageBodyPart.setFileName(fileName);
            multipart.addBodyPart(messageBodyPart);

            message.setContent(multipart);


            MimeBodyPart messageBodyPart1 = new MimeBodyPart();

            messageBodyPart = new MimeBodyPart();
            String file1 = "AutomationQA_HealthChecks.csv";
            String fileName1 = "AutomationQA_HealthChecks.csv";
            DataSource source1 = new FileDataSource(file1);
            messageBodyPart.setDataHandler(new DataHandler(source1));
            messageBodyPart.setFileName(fileName1);
            multipart.addBodyPart(messageBodyPart);
            message.setContent(multipart);

            System.out.println("Sending");

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }


    public void createExcelFile() {
        try {
            String filename = "AutomationQA_HealthChecks.csv";
            HSSFWorkbook workbook = new HSSFWorkbook();
            HSSFSheet sheet = workbook.createSheet("FirstSheet");
            HSSFRow rowhead = sheet.createRow((short) 0);
            rowhead.createCell(0).setCellValue("No.");
            rowhead.createCell(1).setCellValue("Test Case Name");
            rowhead.createCell(2).setCellValue("Status");
            rowhead.createCell(3).setCellValue("TimeStamp");
            rowhead.createCell(4).setCellValue("Report Comments");
            FileOutputStream fileOut = new FileOutputStream(filename);
            workbook.write(fileOut);
            fileOut.close();
            System.out.println("Your excel file has been generated!");

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    public void ExitDriver() throws IOException {
        driver.close();
        Process p = Runtime.getRuntime().exec("taskkill /F /IM ChromeDriver.exe");
    }

    public void writeDataReportToExcel(String testname, String status, String comments) throws IOException, InvalidFormatException, org.apache.poi.openxml4j.exceptions.InvalidFormatException {
        String excelFilePath = "C:\\Users\\Punith.Keshav\\Documents\\ISO work\\Anglo\\Test Automation\\Cucumber\\Automation_V4_Anglo\\Automation_V4_Anglo\\AutomationQA_HealthChecks.csv";;




        FileInputStream inputStream = new FileInputStream(new File(excelFilePath));
        Workbook workbook = WorkbookFactory.create(inputStream);

        Sheet sheet = workbook.getSheetAt(0);
        String timeStamp = new SimpleDateFormat("yyyy-MM-dd HHmmss").format(Calendar.getInstance().getTime());

        Object[][] bookData = {{testname, status, timeStamp, comments},};
        int rowCount = sheet.getLastRowNum();

        for (Object[] aBook : bookData) {
            Row row = sheet.createRow(++rowCount);

            int columnCount = 0;

            Cell cell = row.createCell(columnCount);
            cell.setCellValue(rowCount);

            for (Object field : aBook) {
                cell = row.createCell(++columnCount);
                if (field instanceof String) {
                    cell.setCellValue((String) field);
                } else if (field instanceof Integer) {
                    cell.setCellValue((Integer) field);
                }
            }

        }

        inputStream.close();

        FileOutputStream outputStream = new FileOutputStream(excelFilePath);
        workbook.write(outputStream);
        outputStream.close();
        outputStream.close();


    }

    public void value_date_Field(String value_Date) throws InterruptedException, IOException {
        Thread.sleep(5000);
        String day = "";
        String given_month = "";
        String month = "";
        String year = "";
        String[] tokens = value_Date.split("/");

        year = tokens[0];
        given_month = tokens[1];
        day = tokens[2];
        if (day.equals("01")) {
            day = "1";
        } else if (day.equals("02")) {
            day = "2";
        } else if (day.equals("03")) {
            day = "3";
        } else if (day.equals("04")) {
            day = "4";
        } else if (day.equals("05")) {
            day = "5";
        } else if (day.equals("06")) {
            day = "6";
        } else if (day.equals("07")) {
            day = "7";
        } else if (day.equals("08")) {
            day = "8";
        } else if (day.equals("09")) {
            day = "9";
        }


        if (given_month.equals("01")) {
            month = "0";
        } else if (given_month.equals("02")) {
            month = "1";
        } else if (given_month.equals("03")) {
            month = "2";
        } else if (given_month.equals("04")) {
            month = "3";
        } else if (given_month.equals("05")) {
            month = "4";
        } else if (given_month.equals("06")) {
            month = "5";
        } else if (given_month.equals("07")) {
            month = "6";
        } else if (given_month.equals("08")) {
            month = "7";
        } else if (given_month.equals("09")) {
            month = "8";
        } else if (given_month.equals("10")) {
            month = "9";
        } else if (given_month.equals("11")) {
            month = "10";
        } else if (given_month.equals("12")) {
            month = "11";
        }

        WebElement element = driver.findElement(By.xpath(load_Global_Variables().getProperty("CALENDER")));
        Point point = element.getLocation();
        int xScrollPosition = point.getX();
        int yScrollPosition = point.getY();
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("window.scroll(" + xScrollPosition + ", " + yScrollPosition + ");", new Object[0]);
        executor.executeScript("arguments[0].click();", new Object[]{element});
        Thread.sleep(5000);

    }


}






























