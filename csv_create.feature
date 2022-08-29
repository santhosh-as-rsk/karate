Feature: csv File 

Scenario: Create a CSV file
    * table csv_values
    |name |gender | age |
    |"santhosh"|"male"|50|
    |"kumar"|"male"|50|
    * def SaveCSV =
    """
        function(){
            var temp = karate.toCsv(csv_values)
            karate.write(temp,'new.csv')
        }
    """
    * call SaveCSV

Scenario Outline: Read CSV file
    * def File_data = read(<filename>)
    * def ConvertToCsv = 
    """
        function(){
            return karate.toCsv(File_data)
        }
    """
    * def csvData = call ConvertToCsv
    * print new1
Examples:
|filename|
|"new.csv"|
|"new1.csv"|
