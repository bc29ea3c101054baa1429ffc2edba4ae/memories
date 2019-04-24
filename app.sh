#!/bin/bash 
vara=$1
varb=$2
varc=$3
appdb=~/.app.db

function init {
	sqlite3 $appdb "create table if not exists $varb (id integer primary key autoincrement , date text, content text)"
}

function tables {
	sqlite3 $appdb "select name from sqlite_master where type='table' and name not like 'sqlite_%'"
}

function insert {
	sqlite3 $appdb "insert into $varb (date,content) values (datetime('now'), '$varc')"		
}

function search {
	sqlite3 $appdb "select id, date, content from $varb where content like '%$varc%'"
}

function delete {
	sqlite3 $appdb "delete from $varb where id=$varc"
}

case $vara in
	init) init;;
	tables) tables;;
	insert) insert;;
	search) search;;
	delete) delete;;
	*)
	echo "init [table name]"
	echo "insert [table name] [content]"
	echo "search [table name] [content]"
	echo "delete [table name] [id]"
	;;
esac
