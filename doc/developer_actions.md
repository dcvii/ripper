# developer actions



num| Date|By |Module|Purpose|Notes|Release|Effort|Priority|Status
---|-----|---|------|-------|-----|-------|---------|------|--------|-------
001|0112|MB|sql_runner||Create inner and outer loops for sql runner where cmd_set_count > 1000|||C|Open
002|0112|MB|get_grants||Fix bad grant syntax exported by get_grants.py|||A|In Dev
003|0112|MB|sql_runner||Categorize all sql run types|||C|In Dev
005|0112|MB|get_grants||Make it easier to get through errors, for re-run retain exceptional queries that fail in any case|||A|Coded
006|0112|MB|Docs||document manual process for establishing AWS access|||B|Open
007|0118|MB|get_grants||add export commands to migration schema|||A|Done
008|0118|MB|doc||write a config check|||B|In Dev
009|0124|MB|get_schema||Write Vertica 2 Vertica export|||A|Done
010|0207|MB|sql_runner| |Build generic SQL runner for grants, catalog(?), export|||B|In Dev
011|0228|MB|get_udx | |Build getter for user defined functions, etc |||B|Open
012|0228|MB|get_schema || Build alternative getter for grabbing projections only , projections + tables, tables only|||B|Open


---
## Keys

Effort| Priority|Stauts
------|---------|------
I : No Problem|A: Must Have| Open
II : Non-Trivial|B: Should Have| In Dev
III : Tricky|C: Nice to Have|Pended
IV :  Ugly|D: Fluff| Accepted
