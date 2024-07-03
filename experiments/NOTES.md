# NOTES on LogMill

* Database:
  * Local SQLite?
	+ Tables are good for QSO log
	+ Can use the same schema as DXLog
	- No sync to server?
	- User base?
  * PouchDB?
	+ Good sync to server, both local and remote
	+ Tried and tested
	+ Components can subscribe to changes.
	+ Update events can be filtered
	- Data model doesn't fit as well as a table model would
  * Decision: PouchDB syncing to CouchDB, with CouchDB to PostgreSQL sync in backend.
* Architecture:
  * Log Entry -> PouchDB -> [components* (log, N+1, Score Calculator, etc.)]
  
