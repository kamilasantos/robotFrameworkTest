Robot Framework 

This repository contains a test suite implemented using Robot Framework, a keyword-driven automation testing framework. The test suite demonstrates how to automate web interactions using SeleniumLibrary, focusing on scalability and best practices.

Project Structure

robot_framework_example/
│
├── tests/
│   └── test_suite.robot
│
├── keywords/
│   ├── common_keywords.robot
│   ├── navigation_keywords.robot
│
└── resources/
    └── chromedriver.exe
    
Explanation:
tests: Contains test cases written in Robot Framework's format.
keywords: Contains reusable keywords for interacting with web elements.
resources: Contains browser drivers required for SeleniumLibrary.

Installation

Install Python if not already installed (download).

Install Robot Framework and SeleniumLibrary using pip:

pip install robotframework
pip install robotframework-seleniumlibrary

Usage

To run the test suite, execute the following command in the terminal:

robot tests/test_suite.robot or  python -m robot "test_suite.robot"
This will launch the browser specified in the keywords, navigate to the specified URL, perform various interactions, and verify expected behaviors.

Test Flow

Launch the browser.
Navigate to the specified page.
Navigate to the "Products" page.
Verify the visibility of the search bar.
Write "men tshirt" into the search bar.
Add the product to the cart.
Navigate back to the "Products" page.
Write another product ("women blouse") into the search bar and add it to the cart.
Click on the "Cart" button.
Verify that the added products are visible in the cart.
Verify that the sum of the product values is correct.

Customization
Browser Choice: Currently, the tests are configured to run on Chrome. You can modify this by changing the browser in the Open Browser keyword within the common_keywords.robot file.
URLs: You can modify the URLs in the test cases to fit your application's URLs.

Contributing
Feel free to contribute to this project by forking the repository, making improvements, and creating a pull request. Any contributions are welcomed!

This README provides a comprehensive overview of the project, explaining its structure, usage, customization options, and contribution guidelines.

Feel free to enhance it further based on your specific needs or preferences.
