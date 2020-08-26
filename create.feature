Feature: Creates/Inserts a new entry into a persistence storage 
    This feature provides facility to store/persists the consumer income details.
    It follows Content model/ Log pattern. Once an entry has made, it can't be modified/undergo any changes.
    Most recent data is the source of truth in case of having more than one record per customer id

    Background: Authentication and data validation
        Given APIGEE Service is running
            When Authentication and Authorization is verfied
            And Input data validation performed and data transformation performed(Optional)

    Scenario: Consumer makes the successfully creating a new enrey
        Given REST API service is in Running state
        When Consumer application connects to the "income\v1" API service with get request
        and Consumer application provides the valid credentials using "login.json"
        Then Consumer must receive a valid Access_key as "access_key.json"
        
         