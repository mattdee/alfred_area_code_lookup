#!/bin/bash

ZIPDIR=$HOME/.zip_code_database
WORKDIR=$(pwd)

echo $ZIPDIR
echo $WDIR

mkdir $ZIPDIR
cp -v $WORKDIR/zip_code_database.db $ZIPDIR

echo "This should show no errors."
sqlite3 $ZIPDIR/zip_code_database.db<<EOF
.system echo "Path of database"
.system echo "---------------------------"
.databases
.system echo "---------------------------"
.headers off
.mode box
select count(*) from zip_code_database;
EOF

open 'Area Code Lookup.alfredworkflow'

echo "If this fails, you must manually installed..."