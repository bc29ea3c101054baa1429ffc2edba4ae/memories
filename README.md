# memories

local database for daily usage

## prerequisites

- bash
- sqlite3

## usage

``` bash
[mucho@home localdb]$ ./app.sh 
init [table name]
tables
insert [table name] [content]
search [table name] [content]
delete [table name] [id]

```

## example

``` bash
[mucho@home localdb]$ app init example
[mucho@home localdb]$ app tables
example
[mucho@home localdb]$ app insert example "hack the planet"
[mucho@home localdb]$ app search example hack
1|2019-04-24 06:09:01|hack the planet
[mucho@home localdb]$ app search example
1|2019-04-24 06:09:01|hack the planet
[mucho@home localdb]$ app delete example 1
[mucho@home localdb]$ app search example
[mucho@home localdb]$ 
```
