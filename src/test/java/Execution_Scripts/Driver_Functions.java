package Execution_Scripts;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.Alert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.FluentWait;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.Duration;
import java.util.NoSuchElementException;
import java.util.Set;

public class Driver_Functions extends Main_Functions {


    @Given("^I have launched the browser$")
    public void iHaveLaunchedTheBrowser() throws IOException, InterruptedException, ClassNotFoundException, InvalidFormatException {
        createExcelFile();
        try{
        open_Browser(load_Global_Variables().getProperty("Browser1"), load_Global_Variables().getProperty("ISOMETRIX_URL"));
            Thread.sleep(1000);
            addScreenshot("Screenshots");

        } catch (Throwable t) {
            FailedScreenshot("Isometrix Report", "Screenshots");
            writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }

    }

    @And("^I wait for the element to be visible$")
    public void iWaitForTheElementToBeVisible() throws InterruptedException {
        Thread.sleep(3000);
    }

    @And("^I switch to an iframe$")
    public void iSwitchToAnIframe() throws InterruptedException {

        driver.switchTo().frame("ifrMain");
        Thread.sleep(2000);
    }

    @And("^I switch to the ifrLeftCover frame$")
    public void iSwitchToTheIfrLeftCoverFrame() throws InterruptedException {
        driver.switchTo().frame("ifrLeftCover");
        Thread.sleep(1000);    }

    @And("^I wait for the element to be saved$")
    public void iWaitForTheElementToBeSaved() throws InterruptedException {
        Thread.sleep(1000);  }

    @And("^I switch to popup window$")
    public void iSwitchToPopupWindow() throws InterruptedException, FileNotFoundException {

    }

    @And("^Switch back to default content$")
    public void switchBackToDefaultContent() {
        driver.switchTo().defaultContent();
    }

    @And("^I switch to email trigger Iframe$")
    public void iSwitchToEmailTriggerIframe() throws InterruptedException {
        driver.switchTo().frame("notificationTriggerContent");
        Thread.sleep(1000);

    }
}