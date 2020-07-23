package Execution_Scripts;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;


import java.io.IOException;

;

/**
 * Created by Daisy Kopano
 * 19 October 2019
 */

public class SendKeys_Functions extends Main_Functions {

    @When("^I enter (.*) with ID (.*)$")
    public void iEnterMobileNumberIDWithIDMobileNumberValue(String ElementWithID, String Value) throws IOException, InvalidFormatException, InterruptedException, ClassNotFoundException {

        try{
            new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.id(ElementWithID)));
            driver.findElement(By.id(ElementWithID)).sendKeys(Value);
            Thread.sleep(1000);
            addScreenshot("Screenshots");


        } catch (Throwable t) {
            FailedScreenshot("Isometrix Report", "Screenshots");
            writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }

    }

    @When("^I enter (.*) with Name (.*)$")

    public void iEnterValueWithNameID(String ElementWithName, String Value) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try{
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.id(ElementWithName)));
        driver.findElement(By.id(ElementWithName)).sendKeys(Value);
            Thread.sleep(400);
            addScreenshot("Screenshots");

    } catch (Throwable t) {
        FailedScreenshot("Isometrix Report", "Screenshots");
        writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

    }

}


    @Then("^I upload a file$")
    public void iUploadAFile() {

        WebElement element = driver.findElement(By.name("datafile"));
        element.sendKeys("C:\\Automation\\Maven_SA_Web\\Documents\\HackJam.pdf");
    }


    @When("^I clear a inputbox using ID (.*)$")
    public void iClearAInputboxUsingIDInputboxID(String FieldID) {

        WebElement TextBox = driver.findElement(By.id("FieldID"));
        TextBox.sendKeys(Keys.BACK_SPACE);

    }

    @And("^I enter (.*) using xpath (.*)$")
    public void iEnterViewNameUsingXpathViewFieldXpath(String ElementXpath, String ElementValue) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
        try{
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.xpath(ElementXpath)));
        driver.findElement(By.xpath(ElementXpath)).sendKeys(ElementValue);
            Thread.sleep(2000);
            addScreenshot("Screenshots");


        } catch (Throwable t) {
            FailedScreenshot("Isometrix Report", "Screenshots");
            writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }
    }



    @And("^I select value (.*) from a dropdown (.*)$")
    public void iSelectValueSourceTypeDrpdwnIDFromADropdownDrpdownValue(String DrpdownID ,String DropdownValue) throws IOException, InterruptedException, ClassNotFoundException, InvalidFormatException {
try {

        WebElement SelectDrodownValue = driver.findElement(By.id(DrpdownID));
        Select select = new Select(SelectDrodownValue);
        select.selectByVisibleText(DropdownValue);
      Thread.sleep(400);
      addScreenshot("Screenshots");

        } catch (Throwable t) {
            FailedScreenshot("Isometrix Report", "Screenshots");
            writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }
    }

    @When("^I enter (.*) with class (.*)$")
    public void iEnterAnyWithClassAny(String ElementWithClass ,String ElementValue) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try{
            new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.cssSelector(ElementWithClass)));
            driver.findElement(By.cssSelector(ElementWithClass)).sendKeys(ElementValue);
            Thread.sleep(400);
            addScreenshot("Screenshots");

        } catch (Throwable t) {
            FailedScreenshot("Isometrix Report", "Screenshots");
            writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ClassName");

        }
    }

    @When("^I enter (.*) using CSSSelector (.*)$")
    public void iEnterAnyUsingCSSSelectorAny(String ElementWithCSSSelector ,String ElementValue) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try{
            new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.cssSelector(ElementWithCSSSelector)));
            driver.findElement(By.cssSelector(ElementWithCSSSelector)).sendKeys(ElementValue);
            Thread.sleep(400);
            addScreenshot("Screenshots");

        } catch (Throwable t) {
            FailedScreenshot("Isometrix Report", "Screenshots");
            writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ClassName");

        }
    }
}




