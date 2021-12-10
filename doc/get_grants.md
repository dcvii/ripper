# get_grants.py

### abstract
This code will pull grants data from the Vertica grants table in an order that is appropriate to handling dependencies. It will then generate a large (stored procedure / script) that can be run in against a target database once its objects have been recreated. 