// @description Load Artistic Styles in Neo4J Desktop
// @author Yannick HUCHARD

LOAD CSV 
	WITH HEADERS 
	FROM "file:///C:/dev/artistic_styles/artistic_styles.csv" AS row
	FIELDTERMINATOR ';'

MERGE (as:artistic_style {id: row.id, name: row.name})
	ON CREATE SET as.id = row.id, as.name = row.name

RETURN *;