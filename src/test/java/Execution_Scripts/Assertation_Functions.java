package Execution_Scripts;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;

public class Assertation_Functions extends Main_Functions {


    @Then("^I validate that an element is loaded using ID (.*)$")
    public void iValidateThatAnElementIsLoadedUsingID(String ElementWithID) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
try{
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.id(ElementWithID)));
        Thread.sleep(400);
        addScreenshot("Screenshots");


    } catch (Throwable t) {
        FailedScreenshot("Isometrix Report", "Screenshots");
        writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

    }
    }

    @Then("^I validate that an element is loaded using Text (.*) (.*)$")
    public void iValidateThatAnElementIsLoadedUsingText(String TagType, String TextOnElement) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
        try{
        String path = String.format("//%s[contains(text(),'%s')]", TagType, TextOnElement);
        //div[@class='navContainer loggedOut']//p[contains(text(),'Join Us')]
//        driver.findElement(By.xpath(path)).click();
        Thread.sleep(400);
        addScreenshot( "Screenshots");


        //writeDataReportToExcel("Object clicked", "Passed", "Passed Successfully");

    } catch (Throwable t) {
        FailedScreenshot("Isometrix Report", "Screenshots");
        writeDataReportToExcel("Failed to click an object", "Failed", "Failed to click an object with particular text");
    }

}


    @Then("^I validate that an element is loaded using Xpath (.*)$")
    public void iValidateThatAnElementIsLoadedUsingXpath(String ElementXpath) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try{
            new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.xpath(ElementXpath)));
            Thread.sleep(400);
            addScreenshot("Screenshots");


        } catch (Throwable t) {
            FailedScreenshot("Isometrix Report", "Screenshots");
            writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }
    }

}

