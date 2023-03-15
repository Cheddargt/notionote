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
    title: Text(""),
  );

  page.addProperty(name: "url", property: TitleProp(content: [Text(url!)], name: "URL", ));

  notion.pages.create(page);
}
