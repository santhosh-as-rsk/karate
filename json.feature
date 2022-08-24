Feature: To write and read a json file

Scenario: read and write single json file
    * def json_data = read('new.json')
    * print 'data', json_data
    * def fileCreate = 
    """
        function(){
            karate.write(data,'new.json')
        }
    """
    * call fileCreate
    # for multiple json file create
    * call read('json_write.feature')