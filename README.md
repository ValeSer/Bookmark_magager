# Bookmark Manager

This code is intended as a supplementary guide for [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.

## User stories

```
As a User, so I can
see the pages I saved
I want to have them displayed in a list  
```

## To set up the database

```
1) Connect to 'psql'
2) Create the database using the psql command       CREATE DATABASE bookmark_manager;
3) To set up the appropriate tables, connect to the database using the pqsl command \c bookmark_manager;
4) Run the query we have saved in the file 01_create_bookmarks_table.sql
