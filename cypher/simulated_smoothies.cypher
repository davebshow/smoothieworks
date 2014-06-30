
CREATE (Water:Base {
            UniqueId: "Water"})

CREATE (AlmondMilk:Base {
            UniqueId: "AlmondMilk"})

CREATE (CoconutMilk:Base {
            UniqueId: "CoconutMilk"})

CREATE (Yogurt:Base {
            UniqueId: "Yogurt"})

CREATE (Blueberry:Fruit {
            UniqueId: "Blueberry"})

CREATE (Strawberry:Fruit {
            UniqueId: "Strawberry"})

CREATE (Banana:Fruit {
            UniqueId: "Bannana"})

CREATE (Pineapple:Fruit {
            UniqueId: "Pineapple"})

CREATE (Mango:Fruit {
            UniqueId: "Mango"})

CREATE (Spinach:Green {
            UniqueId: "Spinach"})

CREATE (Kale:Green {
            UniqueId: "Kale"})

CREATE (Dandelion:Green {
            UniqueId: "Dandelion"})

CREATE (ChiaSeeds:Booster {
            UniqueId: "ChiaSeeds"})

CREATE (AcaiPowder:Booster {
            UniqueId: "AcaiPowder"})

CREATE (Rcp1:Recipe {
            UniqueId: "Rcp1"})

CREATE (Rcp2:Recipe {
            UniqueId: "Rcp2"})

CREATE (Rcp3:Recipe {
            UniqueId: "Rcp3"})

CREATE (Rcp4:Recipe {
            UniqueId: "Rcp4"})

CREATE (Rcp5:Recipe {
            UniqueId: "Rcp5"})

CREATE (Rcp6:Recipe {
            UniqueId: "Rcp6"})

// Create Recipes

// Recipe 1
CREATE (Water)-[:IN]->(Rcp1),
	   (Strawberry)-[:IN]->(Rcp1),
       (Blueberry)-[:IN]->(Rcp1),
       (Spinach)-[:IN]->(Rcp1),
       (AcaiPowder)-[:IN]->(Rcp1)

// Recipe 2
CREATE (Water)-[:IN]->(Rcp2),
       (Blueberry)-[:IN]->(Rcp2),
       (Banana)-[:IN]->(Rcp2),
       (Kale)-[:IN]->(Rcp2),
       (AcaiPowder)-[:IN]->(Rcp2)

// Recipe 3
CREATE (CoconutMilk)-[:IN]->(Rcp3),
       (Strawberry)-[:IN]->(Rcp3),
       (Pineapple)-[:IN]->(Rcp3),
       (Spinach)-[:IN]->(Rcp3)

// Recipe 4
CREATE (CoconutMilk)-[:IN]->(Rcp4),
       (Pineapple)-[:IN]->(Rcp4),
       (Mango)-[:IN]->(Rcp4),
       (Dandelion)-[:IN]->(Rcp4),
       (ChiaSeeds)-[:IN]->(Rcp4)

// Recipe 5
CREATE (AlmondMilk)-[:IN]->(Rcp5),
       (Pineapple)-[:IN]->(Rcp5),
       (Strawberry)-[:IN]->(Rcp5),
       (Dandelion)-[:IN]->(Rcp5),
       (AcaiPowder)-[:IN]->(Rcp5)

// Recipe 6
CREATE (Yogurt)-[:IN]->(Rcp6),
       (Banana)-[:IN]->(Rcp6),
       (Dandelion)-[:IN]->(Rcp6)
