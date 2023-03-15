# Notionote

A flutter project created for quickly adding notes and/or bookmarks to your bookmarks database on notion.

## Getting Started

If you want to run this by yourself, follow the guide on how to create an integration:

https://developers.notion.com/docs/create-a-notion-integration

Next, create a file on notionote/lib called security.dart (notice I import it on endpoints.dart) with the following variables:

var NOTION_KEY = "xxxxxxx";
var NOTION_DATABASE_ID = "xxxxxxx";

The guide will show you what to replace the "x" with. If the code seems confusing, that's because it is! I have no idea what I'm doing, but I want to see what can I do to fullfill my own organization needs.

## TO-DO's
~~* Create a project using share intent's example~~
~~* Include notion_api's example~~
~~* Fix error regarding notion_api's example and the latest version~~
~~* Integrate both share intent and notion_api's create page functionality~~
~~* Sucessfully share a link to notionote and have it be inserted into a database~~
* Add a specific property to a page and insert it into a database
* Parse link to automatically fill the *platform* property of my database (Twitter, Instagram, etc)
* Parse titles/descriptions to automatically fill the *title* field of a page
* Make it so notionote automatically shifts focus back to the app that you were using as soon as you share a link into it
* Create http endpoints to no longer need notion_api and reduce dependencies on outdated packages
* Add a popup (toast) that opens as soon as you share a link into notionote
* Add a pre-filled title already selected that can either be sent as is or edited by the user (without having to Select All > Edit)

### Future
* Batch-add functionality