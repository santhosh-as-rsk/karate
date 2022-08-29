Feature: CSV file operations

Background:
    * def data = read('new.csv')
    * def selected = 'male'
    * def fun = function(x){ return x.gender == selected }
    * def filtered = karate.filter(data, fun)
    * configure afterScenario =
    """
        function(){
            var temp = karate.toCsv(data)
            karate.write(temp,'new.csv')
            
        }
    """ 
    
Scenario Outline: update a multiple value
    * set __row.gender = 'Male'
    * print filtered,data
Examples:
    | filtered |

Scenario: update a particular value
    * def selected = 'kumar'
    * def fun = function(x){ return x.name == selected }
    * def filtered_data = karate.filter(data, fun)
    * set filtered_data[0].name = 'santhoshs'
    * print data,filtered_data