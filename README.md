# performance-testing-jmeter

* **Pre-conditions**
  * Download and install Java: [a link] (https://www.codejava.net/java-se/download-and-install-java-11-openjdk-and-oracle-jdk)
  * Download Apache jMeter: [a link] (https://jmeter.apache.org/download_jmeter.cgi)
  * Extract the downloaded archive with jMeter to projectRoot/jmeter (make sure that you have such folder hierarchy: ./performance-testing-jmeter/jmeter/bin)

* **Test execution**
  * Pre-defined test data stored in test-plans/pet-store-test-data-set.csv 
  * To execute tests you should launch ***launch-test.sh*** from bush terminal with next parameters: First: user-count (number), Second: delay (number)
    * ex. "sh launch-test.sh 50 0"

* **Results**
  * Execution results are saved to pet-store-test-report/pet-store-test-results.log file
  * Execution request data saved to pet-store-test-report/pet-store-test-report.xml file
  * Test report generated to pet-store-test-report/pet-store-test-html-report/ folder 

**NOTE**: For some reason, Update and Delete requests are not working properly. Every request returns status code 404.