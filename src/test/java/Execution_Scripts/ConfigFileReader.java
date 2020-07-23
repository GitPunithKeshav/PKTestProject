package Execution_Scripts;

import java.io.IOException;

public class ConfigFileReader extends Main_Functions {

    public String getReportConfigPath() throws IOException {

        String reportConfigPath= load_Global_Variables().getProperty("reportConfigPath");
        if(reportConfigPath!= null) return reportConfigPath;
        else throw new RuntimeException("Report Config Path not specified in the Configuration.properties file for the Key:reportConfigPath");
    }
}
