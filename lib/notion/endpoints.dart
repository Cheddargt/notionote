import 'package:flutter/services.dart';
import 'package:notion_api/notion_api.dart';
import 'package:notionote/helpers/utils.dart';
import 'package:notionote/security.dart' as key;

addBookmark(String? url) async {
  // Initialize the main Notion client
  final Client notion = Client(auth: key.NOTION_KEY);

  // var title = await fetchPageTitle(url!);

  // With database parent
  Page page = Page(
    parent: Parent.database(id: key.NOTION_DATABASE_ID), // <- database
    title: Text(url!),
  );

  var res = await notion.pages.create(page);

  if (res.status == 200) {
    print("Page creation successful");
    return SystemNavigator.pop();
  } else {
    print("Page creation failed");
    // page.properties.add(name: "URL", property: TitleProp(content: [Text(url)], name: "URL", ));
    // page.addPropertiesFromJson({
    //   "properties": {
    //     "URL": {"url": url.toString()}
    //   }
    // });
    // notion.pages.update(page_id: res.body)
    return SystemNavigator.pop();
  }
}
