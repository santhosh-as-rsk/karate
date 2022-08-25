Feature: Create a json file

Scenario Outline: Update a current json value
    * string fileName = 'new.json'
    * def JsonData = {"name":"santhosh","locations":"dindigul","gender":"Male"}
    * JsonData.name = <name>
    * JsonData.locations = <locations>
    * JsonData.gender = <gender>
    * def SaveFile =
    """
        function(){
           karate.write(JsonData,fileName)
        }
    """
    * call SaveFile

Examples:
|name   |locations  |gender |
|"santhosh kumar" | "dindigul" | "Male" |