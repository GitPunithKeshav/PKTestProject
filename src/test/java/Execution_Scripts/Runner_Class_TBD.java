package Execution_Scripts;

import Base.ExtentReportUtil;
import com.cucumber.listener.Reporter;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.AfterClass;
import org.junit.runner.RunWith;

import java.io.File;
import java.io.IOException;
//import managers.FileReaderManager;


@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/features",
        glue= {"Execution_Scripts"},
        plugin ={"com.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report.html"},
        monochrome = true,
        tags={"@Login"}

)


public class Runner_Class_TBD {

    ExtentReportUtil extentReportUtil = new ExtentReportUtil();
//    @AfterClass
//    public static void writeExtentReport() {
//        Reporter.loadXMLConfig(new File("extent-config.xml"));
//    }
//
//    }


    @AfterClass
    public static void writeExtentReport() throws IOException {
        Reporter.loadXMLConfig(new File(FileReaderManager.getInstance().getConfigReader().getReportConfigPath()));
    }
}

