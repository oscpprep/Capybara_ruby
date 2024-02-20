# example for activating ruby env
source /home/ubuntu/.rvm/scripts/rvm  

The blog with users website is available at https://github.com/oscpprep/POM/tree/9867beef8b4b9748d0e102071d4b0a524fde1222/dockers_compressed_into_7zips

### README.md

#### Project Structure
```
├── ./config.rb
├── ./cucumber.yml
├── ./features
│   ├── ./features/config
│   │   └── ./features/config/test_config.rb
│   ├── ./features/feature_files
│   │   ├── ./features/feature_files/authentication.feature
│   │   ├── ./features/feature_files/create_delete_post.feature
│   │   └── ./features/feature_files/landing.feature
│   ├── ./features/step_definitions
│   │   ├── ./features/step_definitions/authentication_steps.rb
│   │   ├── ./features/step_definitions/Capybara_ruby.code-workspace
│   │   ├── ./features/step_definitions/landing_steps.rb
│   │   └── ./features/step_definitions/post_steps.rb
│   └── ./features/support
│       ├── ./features/support/env.rb
│       ├── ./features/support/helpers
│       └── ./features/support/pages
│           ├── ./features/support/pages/base_page.rb
│           ├── ./features/support/pages/create_post_and_delete_page.rb
│           ├── ./features/support/pages/home_page.rb
│           └── ./features/support/pages/login_page.rb
├── ./Gemfile
├── ./Gemfile.lock
├── ./lib
│   └── ./lib/modules
│       └── ./lib/modules/helper_module.rb
├── ./log
│   └── ./log/cucumber.log
├── ./Readme.md
├── ./reports
│   ├── ./reports/report.html
│   └── ./reports/report.txt
└── ./spec
    └── ./spec/spec_helper.rb
```

### Project Components

#### 1. Gemfile
The Gemfile specifies the Ruby version and lists the required gems for testing. Each gem serves a specific purpose, such as Cucumber for behavior-driven development, RSpec for testing frameworks, and Capybara for web application testing.

#### 2. Feature Files (features/feature_files)
Feature files, such as `example.feature`, contain scenarios written in Gherkin language. These scenarios describe the expected behavior of the application from a user's perspective.

#### 3. Step Definitions (features/step_definitions)
Step definitions, implemented in `example_steps.rb`, define the actions corresponding to Gherkin steps. The classes `BasePage`, `HomePage`, and `LoginPage` encapsulate common functionalities, providing a structured approach to page interactions.

#### 4. Support (features/support)
- **env.rb:** Configures the test environment, requiring necessary dependencies, and setting up the default driver (`:webdriverio` in this case).
- **pages:** Contains page object classes (`BasePage`, `HomePage`, `LoginPage`) for encapsulating page-specific functionalities.

#### 5. Lib/Modules (lib/modules)
This directory appears to be empty according to the provided structure. You can use this directory to store shared modules or utilities.

#### 6. Spec (spec)
- **spec_helper.rb:** Configures RSpec with specific expectations and mocks for testing.

### Running the Tests

1. **Install Dependencies:** Run `bundle install` to install the required gems specified in the Gemfile.

2. **Run Tests:** Execute the tests using a command like `cucumber features/feature_files/example.feature`. This will run the specified feature file using Cucumber.

### Additional Notes
- **WebDriver Configuration:** The `Capybara.register_driver` block in `env.rb` configures WebDriver options. In this example, the browser of choice is Firefox (`browser: :firefox`). Adjust this based on your preferences.

- **Max Wait Time:** `Capybara.default_max_wait_time` sets the default maximum wait time for Capybara actions. It's set to 10 seconds in this example.

