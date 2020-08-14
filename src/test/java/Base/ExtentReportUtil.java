package Base;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

public class ExtentReportUtil  extends BaseUtil{
    String fileName =reportLocation + "extentreport.html";

    public void ExtentReport(){

        extent = new ExtentReports();
        ExtentHtmlReporter htmlReporter = new ExtentHtmlReporter(fileName);
        htmlReporter.config().setTheme(Theme.DARK);
        htmlReporter.config().setDocumentTitle("Test Report for Anglo Project");
        htmlReporter.config().setEncoding("utf-8");
        htmlReporter.config().setReportName("Cucumber Test Report");
        extent.attachReporter(htmlReporter);


    }

    public void ExtentReportsScreenShots() throws IOException {
        var scr = ((TakesScreenshot)Driver).getScreenshotAs(OutputType.FILE);
        Files.copy(scr.toPath(),new File(reportLocation + "screenshot.png").toPath());
    }

    public void FlushReport(){
        extent.flush();
    }
}
