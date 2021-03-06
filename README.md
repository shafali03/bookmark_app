# Bookmark Manager


## User Stories

```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

## To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## To set up the test database (for running feature and unit tests)  

Connect to `psql` and create the `bookmark_manager_test` database:

```
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## How to use the Bookmark Manager app

```
In your terminal, type rackup -p 4567
```
To view bookmarks, navigate to `localhost:4567/bookmarks`.
Click on `add bookmark` to go to a form to add a bookmark.
Fill in this form with title and url  and click `add`.
You should see your bookmark as a link. Click on the link to use bookmark.
To delete a bookmark, click the delete button next to the link.

