CREATE CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
UNWIND [{_id:0, properties:{title:"種族", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%88%86%E9%A1%9E:%E7%A8%AE%E6%97%8F", parents:"***"}}, {_id:1, properties:{title:"地點", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%88%86%E9%A1%9E:%E5%9C%B0%E9%BB%9E", parents:"***"}}, {_id:2, properties:{title:"飛行生物", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%88%86%E9%A1%9E:%E9%A3%9B%E8%A1%8C%E7%94%9F%E7%89%A9", parents:"***"}}, {_id:3, properties:{title:"陸地生物", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%88%86%E9%A1%9E:%E9%99%B8%E5%9C%B0%E7%94%9F%E7%89%A9", parents:"***"}}, {_id:4, properties:{title:"水生生物", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%88%86%E9%A1%9E:%E6%B0%B4%E7%94%9F%E7%94%9F%E7%89%A9", parents:"***"}}, {_id:5, properties:{title:"道具", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%88%86%E9%A1%9E:%E9%81%93%E5%85%B7?venotify=created", parents:"***"}}, {_id:6, properties:{title:"傳說生物", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%88%86%E9%A1%9E:%E5%82%B3%E8%AA%AA%E7%94%9F%E7%89%A9", parents:"種族"}}, {_id:7, properties:{title:"人類", url:"https://aventure.fandom.com/zh-tw/wiki/%E4%BA%BA%E9%A1%9E", parents:"種族,陸地生物"}}, {_id:8, properties:{title:"穿山甲", url:"https://aventure.fandom.com/zh-tw/wiki/%E7%A9%BF%E5%B1%B1%E7%94%B2", parents:"種族,陸地生物"}}, {_id:9, properties:{title:"貓頭鷹", url:"https://aventure.fandom.com/zh-tw/wiki/%E8%B2%93%E9%A0%AD%E9%B7%B9", parents:"種族,飛行生物"}}, {_id:10, properties:{title:"加瑪托", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%8A%A0%E7%91%AA%E6%89%98", parents:"種族,陸地生物"}}, {_id:11, properties:{title:"蘑菇人", url:"https://aventure.fandom.com/zh-tw/wiki/%E8%98%91%E8%8F%87%E4%BA%BA", parents:"種族,陸地生物"}}, {_id:12, properties:{title:"驩獸", url:"https://aventure.fandom.com/zh-tw/wiki/%E9%A9%A9%E7%8D%B8", parents:"種族,陸地生物"}}, {_id:13, properties:{title:"黑白食蟻獸", url:"https://aventure.fandom.com/zh-tw/wiki/%E9%BB%91%E7%99%BD%E9%A3%9F%E8%9F%BB%E7%8D%B8", parents:"種族,陸地生物"}}, {_id:14, properties:{title:"巴拉布尼亞", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%B7%B4%E6%8B%89%E5%B8%83%E5%B0%BC%E4%BA%9E", parents:"種族,陸地生物"}}, {_id:15, properties:{title:"凱爾特兔", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%87%B1%E7%88%BE%E7%89%B9%E5%85%94", parents:"種族,陸地生物"}}, {_id:16, properties:{title:"果實樹人", url:"https://aventure.fandom.com/zh-tw/wiki/%E6%9E%9C%E5%AF%A6%E6%A8%B9%E4%BA%BA", parents:"種族,陸地生物"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Category;
UNWIND [{_id:23, properties:{categories:"水生生物", title:"美人魚", url:"https://aventure.fandom.com/zh-tw/wiki/%E7%BE%8E%E4%BA%BA%E9%AD%9A"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:水生生物;
UNWIND [{_id:18, properties:{categories:"穿山甲", title:"甲甲", url:"https://aventure.fandom.com/zh-tw/wiki/%E7%94%B2%E7%94%B2"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:穿山甲;
UNWIND [{_id:20, properties:{categories:"傳說生物", title:"肥遺", url:"https://aventure.fandom.com/zh-tw/wiki/%E8%82%A5%E9%81%BA"}}, {_id:21, properties:{categories:"傳說生物", title:"青龍", url:"https://aventure.fandom.com/zh-tw/wiki/%E9%9D%92%E9%BE%8D"}}, {_id:22, properties:{categories:"傳說生物", title:"湖中女神", url:"https://aventure.fandom.com/zh-tw/wiki/%E6%B9%96%E4%B8%AD%E5%A5%B3%E7%A5%9E"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:傳說生物;
UNWIND [{_id:24, properties:{categories:"地點", title:"峽谷對岸", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%B3%BD%E8%B0%B7%E5%B0%8D%E5%B2%B8"}}, {_id:25, properties:{categories:"地點", title:"聖吉米尼亞諾城", url:"https://aventure.fandom.com/zh-tw/wiki/%E8%81%96%E5%90%89%E7%B1%B3%E5%B0%BC%E4%BA%9E%E8%AB%BE%E5%9F%8E"}}, {_id:26, properties:{categories:"地點", title:"草原村莊", url:"https://aventure.fandom.com/zh-tw/wiki/%E8%8D%89%E5%8E%9F%E6%9D%91%E8%8E%8A"}}, {_id:27, properties:{categories:"地點", title:"北方森林", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%8C%97%E6%96%B9%E6%A3%AE%E6%9E%97"}}, {_id:28, properties:{categories:"地點", title:"大陸邊境山脈", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%A4%A7%E9%99%B8%E9%82%8A%E5%A2%83%E5%B1%B1%E8%84%88"}}, {_id:29, properties:{categories:"地點", title:"峽谷", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%B3%BD%E8%B0%B7"}}, {_id:30, properties:{categories:"地點", title:"巴拉布尼亞族村莊", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%B7%B4%E6%8B%89%E5%B8%83%E5%B0%BC%E4%BA%9E%E6%97%8F%E6%9D%91%E8%8E%8A"}}, {_id:31, properties:{categories:"地點", title:"加瑪托村莊", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%8A%A0%E7%91%AA%E6%89%98%E6%9D%91%E8%8E%8A"}}, {_id:32, properties:{categories:"地點", title:"驩獸村莊", url:"https://aventure.fandom.com/zh-tw/wiki/%E9%A9%A9%E7%8D%B8%E6%9D%91%E8%8E%8A"}}, {_id:33, properties:{categories:"地點", title:"提奧城", url:"https://aventure.fandom.com/zh-tw/wiki/%E6%8F%90%E5%A5%A7%E5%9F%8E"}}, {_id:34, properties:{categories:"地點", title:"拉奧市", url:"https://aventure.fandom.com/zh-tw/wiki/%E6%8B%89%E5%A5%A7%E5%B8%82"}}, {_id:35, properties:{categories:"地點", title:"穿山甲秘境", url:"https://aventure.fandom.com/zh-tw/wiki/%E7%A9%BF%E5%B1%B1%E7%94%B2%E7%A7%98%E5%A2%83"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:地點;
UNWIND [{_id:36, properties:{categories:"道具", title:"祖傳的翻譯項鍊", url:"https://aventure.fandom.com/zh-tw/wiki/%E7%A5%96%E5%82%B3%E7%9A%84%E7%BF%BB%E8%AD%AF%E9%A0%85%E9%8D%8A"}}, {_id:37, properties:{categories:"道具", title:"指北針", url:"https://aventure.fandom.com/zh-tw/wiki/%E6%8C%87%E5%8C%97%E9%87%9D"}}, {_id:38, properties:{categories:"道具", title:"橡皮筋", url:"https://aventure.fandom.com/zh-tw/wiki/%E6%A9%A1%E7%9A%AE%E7%AD%8B"}}, {_id:39, properties:{categories:"道具", title:"果實樹人的果實", url:"https://aventure.fandom.com/zh-tw/wiki/%E6%9E%9C%E5%AF%A6%E6%A8%B9%E4%BA%BA%E7%9A%84%E6%9E%9C%E5%AF%A6"}}, {_id:40, properties:{categories:"道具", title:"空氣指環", url:"https://aventure.fandom.com/zh-tw/wiki/%E7%A9%BA%E6%B0%A3%E6%8C%87%E7%92%B0"}}, {_id:41, properties:{categories:"道具", title:"加瑪托秘寶", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%8A%A0%E7%91%AA%E6%89%98%E7%A5%95%E5%AF%B6"}}, {_id:42, properties:{categories:"道具", title:"龍鱗", url:"https://aventure.fandom.com/zh-tw/wiki/%E9%BE%8D%E9%B1%97"}}, {_id:43, properties:{categories:"道具", title:"珍珠", url:"https://aventure.fandom.com/zh-tw/wiki/%E7%8F%8D%E7%8F%A0"}}, {_id:44, properties:{categories:"道具", title:"通往峽谷底部的門的鑰匙", url:"https://aventure.fandom.com/zh-tw/wiki/%E9%80%9A%E5%BE%80%E5%B3%BD%E8%B0%B7%E5%BA%95%E9%83%A8%E7%9A%84%E9%96%80%E7%9A%84%E9%91%B0%E5%8C%99"}}, {_id:45, properties:{categories:"道具", title:"肥遺雕像", url:"https://aventure.fandom.com/zh-tw/wiki/%E8%82%A5%E9%81%BA%E9%9B%95%E5%83%8F"}}, {_id:46, properties:{categories:"道具", title:"兔子腳", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%85%94%E5%AD%90%E8%85%B3"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:道具;
UNWIND [{_id:19, properties:{categories:"人類", title:"圍巾", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%9C%8D%E5%B7%BE"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:人類;
UNWIND [{_id:17, properties:{categories:"貓頭鷹", title:"巴卡莫娜", url:"https://aventure.fandom.com/zh-tw/wiki/%E5%B7%B4%E5%8D%A1%E8%8E%AB%E5%A8%9C"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:貓頭鷹;
UNWIND [{start: {_id:6}, end: {_id:0}, properties:{}}, {start: {_id:7}, end: {_id:0}, properties:{}}, {start: {_id:7}, end: {_id:3}, properties:{}}, {start: {_id:8}, end: {_id:0}, properties:{}}, {start: {_id:8}, end: {_id:3}, properties:{}}, {start: {_id:9}, end: {_id:0}, properties:{}}, {start: {_id:9}, end: {_id:2}, properties:{}}, {start: {_id:10}, end: {_id:0}, properties:{}}, {start: {_id:10}, end: {_id:3}, properties:{}}, {start: {_id:11}, end: {_id:0}, properties:{}}, {start: {_id:11}, end: {_id:3}, properties:{}}, {start: {_id:12}, end: {_id:0}, properties:{}}, {start: {_id:12}, end: {_id:3}, properties:{}}, {start: {_id:13}, end: {_id:0}, properties:{}}, {start: {_id:13}, end: {_id:3}, properties:{}}, {start: {_id:14}, end: {_id:0}, properties:{}}, {start: {_id:14}, end: {_id:3}, properties:{}}, {start: {_id:15}, end: {_id:0}, properties:{}}, {start: {_id:15}, end: {_id:3}, properties:{}}, {start: {_id:16}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:subClassOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:16}, end: {_id:3}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:subClassOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:19}, end: {_id:18}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:旅行同伴]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:34}, properties:{}}, {start: {_id:8}, end: {_id:35}, properties:{}}, {start: {_id:10}, end: {_id:31}, properties:{}}, {start: {_id:11}, end: {_id:26}, properties:{}}, {start: {_id:14}, end: {_id:30}, properties:{}}, {start: {_id:13}, end: {_id:29}, properties:{}}, {start: {_id:12}, end: {_id:32}, properties:{}}, {start: {_id:15}, end: {_id:24}, properties:{}}, {start: {_id:16}, end: {_id:27}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:居住於]->(end) SET r += row.properties;
UNWIND [{start: {_id:18}, end: {_id:17}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:旅行同伴]->(end) SET r += row.properties;
UNWIND [{start: {_id:19}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ObjectOneOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:18}, end: {_id:8}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ObjectOneOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:36}, end: {_id:5}, properties:{}}, {start: {_id:37}, end: {_id:5}, properties:{}}, {start: {_id:38}, end: {_id:5}, properties:{}}, {start: {_id:39}, end: {_id:5}, properties:{}}, {start: {_id:40}, end: {_id:5}, properties:{}}, {start: {_id:41}, end: {_id:5}, properties:{}}, {start: {_id:42}, end: {_id:5}, properties:{}}, {start: {_id:43}, end: {_id:5}, properties:{}}, {start: {_id:44}, end: {_id:5}, properties:{}}, {start: {_id:45}, end: {_id:5}, properties:{}}, {start: {_id:46}, end: {_id:5}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ObjectOneOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:17}, end: {_id:19}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:旅行同伴]->(end) SET r += row.properties;
UNWIND [{start: {_id:17}, end: {_id:18}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:旅行同伴]->(end) SET r += row.properties;
UNWIND [{start: {_id:18}, end: {_id:19}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:旅行同伴]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:4}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ObjectOneOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:17}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ObjectOneOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:25}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:被囚禁於]->(end) SET r += row.properties;
UNWIND [{start: {_id:20}, end: {_id:6}, properties:{}}, {start: {_id:21}, end: {_id:6}, properties:{}}, {start: {_id:22}, end: {_id:6}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ObjectOneOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:24}, end: {_id:1}, properties:{}}, {start: {_id:25}, end: {_id:1}, properties:{}}, {start: {_id:26}, end: {_id:1}, properties:{}}, {start: {_id:27}, end: {_id:1}, properties:{}}, {start: {_id:28}, end: {_id:1}, properties:{}}, {start: {_id:29}, end: {_id:1}, properties:{}}, {start: {_id:30}, end: {_id:1}, properties:{}}, {start: {_id:31}, end: {_id:1}, properties:{}}, {start: {_id:32}, end: {_id:1}, properties:{}}, {start: {_id:33}, end: {_id:1}, properties:{}}, {start: {_id:34}, end: {_id:1}, properties:{}}, {start: {_id:35}, end: {_id:1}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ObjectOneOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:19}, end: {_id:17}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:旅行同伴]->(end) SET r += row.properties;
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
DROP CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
