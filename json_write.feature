Feature: To create a json file


Scenario Outline: Multiple file creation
    * def jsonObject = <data>
    * string filename = <filename>
    * def store_file =
    """
        function(){
           karate.write(jsonObject,filename)
        }
    """
    * def results = call store_file

Examples:
|data   |filename|
|[{"name":"santhosh","locations":"dindigul"},{"name":"kumar","locations":"dindigul"}]|'santhosh.json'|
|[{"name":"santhosh","locations":"dindigul"},{"name":"kumar","locations":"dindigul"}]|'santhoshs.json'|