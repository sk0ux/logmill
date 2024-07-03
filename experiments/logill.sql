CREATE TABLE IF NOT EXISTS qsodata (
       idqso INTEGER PRIMARY KEY ASC,		-- row/QSO number
       band VARCHAR(10),			-- band name
       period INTEGER,				-- ?
       frequency DOUBLE,			-- frequency in kHz
       mode VARCHAR(10),			-- mode [CW, SSB, ...]
       qsotime DATETIME,			-- QSO timestamp, 1s resolution
       callsign VARCHAR(20),			-- worked station calsign
       sent VARCHAR(5),				-- sent RS(T)
       nr INTEGER,				-- number (sometimes sent), identical to idqso?
       rcvd VARCHAR(30),			-- received report, RS(T) and exchange
       recinfo VARCHAR(60),			-- ?
       recinfo2 VARCHAR(60),			-- ?
       recinfo3 VARCHAR(60),			-- ?
       stn VARCHAR(10),				-- station type (R/S&P)
       originstnid VARCHAR(30),			-- station name
       originidqso INTEGER,			-- ?
       xqso BIT,				-- ?
       qsotimestamp DATETIME,			-- same as qsotime?
       qsoguid UNIQUEIDENTIFIER,		-- UID for QSO, what for?
       operator VARCHAR(30),			-- operator callsign
       recfileindex INTEGER,			-- ?
       recfileposition INTEGER			-- ?
       );

--
-- With the internal and unclear fields removed, just for the MVP:
--
-- NOTES:
--   * Should idqso be a UUID to avoid synchronisation conflicts?
--   * 
CREATE TABLE IF NOT EXISTS QSOs (
       idqso INTEGER PRIMARY KEY ASC,		-- row/QSO number
       band VARCHAR(10),			-- band name
       frequency DOUBLE,			-- frequency in kHz
       mode VARCHAR(10),			-- mode [CW, SSB, ...]
       qsotime DATETIME,			-- QSO timestamp, 1s resolution
       callsign VARCHAR(20),			-- worked station calsign
       sent VARCHAR(5),				-- sent RS(T)
       nr INTEGER,				-- number (sometimes sent), identical to idqso?
       rcvd VARCHAR(30),			-- received report, RS(T) and exchange
       stn VARCHAR(10),				-- station type (R/S&P)
       originstnid VARCHAR(30),			-- station name
       qsotimestamp DATETIME,			-- same as qsotime?
       qsoguid UNIQUEIDENTIFIER,		-- UID for QSO, what for?
       operator VARCHAR(30),			-- operator callsign
       );
