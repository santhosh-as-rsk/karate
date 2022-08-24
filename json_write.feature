Feature:json write


Scenario Outline:
    * def jsonObject = <data>
    * string filename = <filename>
    # * def new = function(){ return karate.write(data,"main.json")}
    # * def FileUtils = Java.type('com.intuit.karate.FileUtils')
    # * def result = FileUtils.writeToFile('temp.txt','hello world')
    * def file =
    """
        function(){
           karate.write(jsonObject,filename)
        }
    """
    * def results = call file

Examples:
|data   |filename|
|[{"name":"santhosh","locations":"dindigul"},{"name":"kumar","locations":"dindigul"}]|'santhosh.json'|
|[{"name":"santhosh","locations":"dindigul"},{"name":"kumar","locations":"dindigul"}]|'santhoshs.json'|