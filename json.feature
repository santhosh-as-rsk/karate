Feature: To write and read a json file

Scenario:
    * def jsonObject = {name: 'santhosh', age: 18}
    * def data = read('new.json')
    * print 'data', data
    * def value = 
    """
        function(){
            karate.write(data,'new.json')
        }
    """
    * call value
    # for multiple json file create
    * call read('json_write.feature')