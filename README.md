# logmill
Web based contest logger


API
===

Read
----

```curl http://logmill.online/api/v1/log/<log id>/qso/<qso id>?format=json | python -m json.tool
{
  "_id": "WAXdleLHS8innvdipSD1kw",
  "_ts": "2017-06-08T21:34:33.3456Z",
  "qso": {
    "time": "2017-06-08T21:34:33Z",
    "duration": 123,
    "my-call": "SJ0X",
    "remote-call": "KN0W",
    "sent-report": "599",
    "recv-report": "577",
    "extra": {
      "type": ...
    }
  }
}```


Create
------

```curl -d {....} -X POST http://logmill.online/api/v1/log/<log id>/qso
{
  "_id" : "WAXdleLHS8innvdipSD1kw",
  "_ts": "2017-06-08T21:34:33.3456Z"
}```


Delete
------

```curl -X DELETE http://logmill.online/api/v1/log/<log id>/qso/<qso id>```


Update
------

```curl -X PUT -d {...} http://logmill.online/api/v1/log/<log id>/qso/<qso id>```


Query
-----

```curl http://logmill.online/api/v1/log/<log id>/qso/_query?...
curl http://logmill.online/api/v1/log/<log id>/qso/_all
curl http://logmill.online/api/v1/log/_all
curl http://logmill.online/api/v1/log/_query?...
query:
  start_time=...&end_time=...
  select=all
  last=100```


Export
------

```curl http://logmill.online/api/v1/log/<log id>/qso/_all?format=cabrillo```


WebSocket Subscribe
-------------------

```curl -i -N -H "Connection: Upgrade" -H "Upgrade: websocket" -H "Host: logmill.online" -H http://logmill.online/api/v1/log/<log id>/_query?last=100
[{...} ... {...}]
{...}
{...}```
