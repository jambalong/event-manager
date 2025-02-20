# Event Manager

This project is part of The Odin Project - [Event Manager](https://www.theodinproject.com/lessons/ruby-event-manager) in Ruby curriculum.

## Lesson Overview

In this project, I will develop skills in data manipulation and analysis by working with CSV files and external APIs. 

Key topics include:

- **File Input/Output**: Learn how to read from and write to files in Ruby.
- **CSV Handling**: Parse and process data from CSV files to ensure data integrity and consistency.
- **Data Transformation**: Standardize input formats, particularly for phone numbers and registration timestamps.
- **API Integration**: Access and utilize Google’s Civic Information API using the Google API Client Gem for enhanced functionality.
- **String Manipulation**: Develop skills to clean and format strings for better usability and analysis.
- **Time Analysis**: Utilize Ruby's Date and Time classes to analyze registration data and identify peak registration hours and days.
- **Templating with ERB**: Use Embedded Ruby (ERB) for dynamically populating templates with user data, enhancing presentation and interaction.

## Assignment: Clean phone numbers

Similar to the zip codes, the phone numbers suffer from multiple formats and inconsistencies. If we wanted to allow individuals to sign up for mobile alerts with the phone numbers, we would need to make sure all of the numbers are valid and well-formed.

* If the phone number is less than 10 digits, assume that it is a bad number
* If the phone number is 10 digits, assume that it is good
* If the phone number is 11 digits and the first number is 1, trim the 1 and use the remaining 10 digits
* If the phone number is 11 digits and the first number is not 1, then it is a bad number
* If the phone number is more than 11 digits, assume that it is a bad number

## Assignment: Time targeting

The boss is already thinking about the next conference: “Next year I want to make better use of our Google and Facebook advertising. Find out which hours of the day the most people registered, so we can run more ads during those hours.” Interesting!

Using the registration date and time we want to find out what the peak registration hours are.

* Ruby has Date and Time classes that will be very useful for this task.

* For a quick overview, check out this Ruby Guides article.

* Explore the documentation to become familiar with the available methods, especially `#strptime`, `#strftime`, and `#hour`.

## Assignment: Day of the week targeting

The big boss gets excited about the results from your hourly tabulations. It looks like there are some hours that are clearly more important than others. But now, tantalized, she wants to know “What days of the week did most people register?”

* Use `Date#wday` to find out the day of the week.

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/jambalong/event-manager.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
   cd event-manager
   ```

3. **Run the Application**:
   ```bash
   ruby lib/event_manager.rb
   ```

4. **Access the Output**: Check the terminal or the output files generated by the application to see the results of the processed data.

5. **Explore the Code**: Open the project files in your preferred code editor to review or modify the code as needed.
