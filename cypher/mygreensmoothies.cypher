//Graph written from NetworkX

CREATE (GroundCinnamon:Booster {
	UniqueId: "GroundCinnamon"})

CREATE (Carrot:Root {
	UniqueId: "Carrot"})

CREATE (Cantaloupe:Fruit {
	UniqueId: "Cantaloupe"})

CREATE (Banana:Fruit {
	UniqueId: "Banana"})

CREATE (AlmondButter:Booster {
	UniqueId: "AlmondButter"})

CREATE (CantaloupeGrapeSweetnessGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/cantaloupe-grape",
	Description: "Try this green smoothie with coconut oil for an extra nutritional boost of good fats to help lower cholesterol. Recipe Submitted by Joy W.",
	UniqueId: "CantaloupeGrapeSweetnessGreenSmoothie",
	Servings: "2"})

CREATE (ChocolateCoveredCherryGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/chocolate-covered-cherry-smoothie",
	Description: "This antioxidant-packed green smoothie is a healthy indulgence that will satisfy any sweet tooth.",
	UniqueId: "ChocolateCoveredCherryGreenSmoothie",
	Servings: "2"})

CREATE (Rasberry:Fruit {
	UniqueId: "Rasberry"})

CREATE (StrawberryPeachRefresherGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/strawberry-peach-refresher",
	Description: "This smoothie uses the mild tasting green bok choy which is known as a cancer-fighting cabbage because of it۪s good source of beta carotene. In just one 9 calorie cup of bok choy you receive 63% vitamin A 52% vitamin C and 8% calcium of your recommended daily value. Recipe Submitted by Yvonne R for our weekly Feature Friday contest.",
	UniqueId: "StrawberryPeachRefresherGreenSmoothie",
	Servings: "2"})

CREATE (OrangeJuice:Base {
	UniqueId: "OrangeJuice"})

CREATE (Celery:Green {
	UniqueId: "Celery"})

CREATE (Lemon:Fruit {
	UniqueId: "Lemon"})

CREATE (Cilantro:Herb {
	UniqueId: "Cilantro"})

CREATE (Parsley:Herb {
	UniqueId: "Parsley"})

CREATE (Spinach:Green {
	UniqueId: "Spinach"})

CREATE (ThanksgivingInYourMouthGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/thanksgiving-in-your-mouth",
	Description: "This is what I am talking about! Thanksgiving in your Mouth green smoothie is the next best thing to a pumpkin spiced latte... and WAY healthier. Serve with a dash of nutmeg on top (mine was more like a spoonful of nutmeg...and it was so gooooood). Happy fall to you!",
	UniqueId: "ThanksgivingInYourMouthGreenSmoothie",
	Servings: "2"})

CREATE (Ginger:Booster {
	UniqueId: "Ginger"})

CREATE (KiwiStrawberryTwistGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/kiwi-strawberry-twist",
	Description: "Get adventurous with your green smoothies by rotating the greens you put in it (which is a great way to avoid alkaloid build-up.) Strawberry kiwi and fresh Orange give this green smoothie a sweet vitamin C boost.",
	UniqueId: "KiwiStrawberryTwistGreenSmoothie",
	Servings: "2"})

CREATE (honey:Sweetener {
	UniqueId: "honey"})

CREATE (Mint:Herb {
	UniqueId: "Mint"})

CREATE (SPASkinCleanseGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/spa-skin-cleanse",
	Description: "Get a lot of bang for your blend with this green smoothie. Avocado has a significant portion of healthy fats and vitamin E while the coconut water is like natures gatorade hydrating and regenerating your tissue.۝ By gulping natural skin boosting ingredients in this green smoothie and applying external moisturizer (Jens favorite is unrefined coconut oil) your skin should be glowing in no time.",
	UniqueId: "SPASkinCleanseGreenSmoothie",
	Servings: "2"})

CREATE (PinaColadaGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/pina-colada",
	Description: "Get an early start on summer with this tropical island Pi̱a Colada green smoothie. The fresh pineapple and almond milk make this smoothie creamy and sweet almost like dessert. Recipe submitted by Tiffany I.",
	UniqueId: "PinaColadaGreenSmoothie",
	Servings: "2"})

CREATE (CoconutWater:Base {
	UniqueId: "CoconutWater"})

CREATE (CranberryKaleCoolerGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/cranberry-kale-cooler",
	Description: "Give your taste buds a run for their money with this tangy citrus Cranberry Kale Cooler green smoothie recipe chock full of vitamin C and antioxidants. Recipe submitted by Juli Y.",
	UniqueId: "CranberryKaleCoolerGreenSmoothie",
	Servings: "2"})

CREATE (Grapes:Fruit {
	UniqueId: "Grapes"})

CREATE (Water:Base {
	UniqueId: "Water"})

CREATE (Kiwi:Fruit {
	UniqueId: "Kiwi"})

CREATE (Peaches:Fruit {
	UniqueId: "Peaches"})

CREATE (BerryCherryJubileeGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/berry-cherry-jubilee",
	Description: "With the sweet combination of cherries and mixed berries this Berry Cherry Jubilee recipe is packed with disease-fighting antioxidants fiber and vitamin C. Keep calm and get your green smoothie on!",
	UniqueId: "BerryCherryJubileeGreenSmoothie",
	Servings: "2"})

CREATE (CoconutMilk:Base {
	UniqueId: "CoconutMilk"})

CREATE (LemonJuice:Fruit {
	UniqueId: "LemonJuice"})

CREATE (Pear:Fruit {
	UniqueId: "Pear"})

CREATE (StrawberryAndMintPopsicle:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/strawberry-and-mint-popsicle",
	Description: "Enjoy this strawberry mint and spinach green smoothie popsicle recipe. Did you know that 8 Strawberry have more vitamin C than an orange? They are packed with vitamins fiber and high-level antioxidants and a great source of manganese and potassium. Mint is full of vitamin A and vitamin C fiber folate iron vitamin B2 and copper.",
	UniqueId: "StrawberryAndMintPopsicle",
	Servings: "2"})

CREATE (HealingCranberryCleanserGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/healing-cranberry-cleanser",
	Description: "Cranberries are an antioxidant powerhouse so get them fresh during the fall and winter. By drinking this Healing Cranberry Cleanser green smoothie with cranberry your body will experience the immediate effects of natural energy. Get your healthy dose of vitamin C and fiber in this healing green smoothie!",
	UniqueId: "HealingCranberryCleanserGreenSmoothie",
	Servings: "2"})

CREATE (BerryProteinBashGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/berry-protein-bash",
	Description: "Give yourself a protein boost with this yummy Berry Protein Bash green smoothie. Protein burns slower than carbohydrates so adding it to smoothies helps prevent blood sugar spikes and helps prevent hunger pains. And it۪s also great if you are working towards a flat belly or building muscles. Yes the majority of us are on a mission to get those firm abs back and drinking a protein-rich smoothie after your work-outs is the perfect formula.",
	UniqueId: "BerryProteinBashGreenSmoothie",
	Servings: "2"})

CREATE (Apple:Fruit {
	UniqueId: "Apple"})

CREATE (KiwiBerryPunchGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/kiwi-berry-punch",
	Description: "Berries are naturally sweet immunity boosters low-calorie and full of antioxidants. Kiwi is packed with vitamin C and an amazing fat-burning citrus fruit. We always keep several bags of frozen berries in the freezer which is perfect for this recipe.",
	UniqueId: "KiwiBerryPunchGreenSmoothie",
	Servings: "2"})

CREATE (BloodOrange:Fruit {
	UniqueId: "BloodOrange"})

CREATE (NavelOrangeJuice:Fruit {
	UniqueId: "NavelOrangeJuice"})

CREATE (BeginnersLuckWithTopsGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/beginners-luck-with-tops",
	Description: "We are lovers of all things leafy green especially spinach. And this extremely creamy green smoothie is no exception.",
	UniqueId: "BeginnersLuckWithTopsGreenSmoothie",
	Servings: "2"})

CREATE (Strawberry:Fruit {
	UniqueId: "Strawberry"})

CREATE (ASweetPearGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/sweet-pear",
	Description: "Pears are a low-calorie fruit packed with fiber folic acid vitamin A and C. A Sweet Pear green smoothie recipe helps keep you fuller longer as well as helps your body heal quickly with extra support for your hair skin and nails. And adding cinnamon to your daily meal plan regulates your blood sugar levels reduces harmful cholesterol and sends a sweet boost to your metabolism.",
	UniqueId: "ASweetPearGreenSmoothie",
	Servings: "2"})

CREATE (Kale:Green {
	UniqueId: "Kale"})

CREATE (CacaoPowder:Booster {
	UniqueId: "CacaoPowder"})

CREATE (StrawberryBananaBlueberryGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/strawberry-banana-blueberry",
	Description: "Oh this smoothie is a good one! Its full of iron potassium vitamin C and antioxidants just to name a few. You can swap the orange juice for a navel orange (just peel it first!). We often add olive leaf extract echinacea and elderberry extract which are great all natural extracts to boost the immune system and fight off infection. Read the bottles for serving measurements and add to your smoothie before blending.",
	UniqueId: "StrawberryBananaBlueberryGreenSmoothie",
	Servings: "2"})

CREATE (GroundNutmeg:Booster {
	UniqueId: "GroundNutmeg"})

CREATE (CucumberPeeled:Fruit {
	UniqueId: "CucumberPeeled"})

CREATE (SunshineInAJarGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/sunshine-in-a-jar",
	Description: "Try this FullyRaw Pineapple Orange Collard/Spinach Smoothie as an ultimate fuel source! This recipe is a natural sunshine in a jar that feeds your body real energy! Recipe Submitted by Kristina @ FullyRaw.",
	UniqueId: "SunshineInAJarGreenSmoothie",
	Servings: "2"})

CREATE (Raspberries:Fruit {
	UniqueId: "Raspberries"})

CREATE (Almond:Booster {
	UniqueId: "Almond"})

CREATE (Cinnamon:Booster {
	UniqueId: "Cinnamon"})

CREATE (Pineapple:Fruit {
	UniqueId: "Pineapple"})

CREATE (Collards:Green {
	UniqueId: "Collards"})

CREATE (SweetPotato:Root {
	UniqueId: "SweetPotato"})

CREATE (Grape:Fruit {
	UniqueId: "Grape"})

CREATE (AvoBananaKaleGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/avo-banana-kale",
	Description: "We are lovers of all things leafy green especially kale. And this extremely creamy green smoothie is no exception.",
	UniqueId: "AvoBananaKaleGreenSmoothie",
	Servings: "2"})

CREATE (PeachCoconutDreamGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/peach-coconut-dream",
	Description: "Enjoy this mildly sweet Peach Coconut Dream green smoothie perfect for those watching their sugar intake. If you want it sweeter feel free to add a banana which also adds more potassium.",
	UniqueId: "PeachCoconutDreamGreenSmoothie",
	Servings: "2"})

CREATE (Avocado:Fruit {
	UniqueId: "Avocado"})

CREATE (Peache:Fruit {
	UniqueId: "Peache"})

CREATE (CranberryJuice:Base {
	UniqueId: "CranberryJuice"})

CREATE (Cherries:Fruit {
	UniqueId: "Cherries"})

CREATE (LimeJuice:Fruit {
	UniqueId: "LimeJuice"})

CREATE (Mango:Fruit {
	UniqueId: "Mango"})

CREATE (CoconutFlakes:Booster {
	UniqueId: "CoconutFlakes"})

CREATE (AlmondButterAndJellyGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/green-smoothie-almond-butter-and-jelly",
	Description: "This is a sweet take on a childs classic sandwich filled with fresh fruit and leafy greens. We love almond butter and its mighty tasty in this green smoothie! Spinach and grapes are packed with antioxidants and phytonutrients and the Banana and almond milk make it nice and creamy.",
	UniqueId: "AlmondButterAndJellyGreenSmoothie",
	Servings: "2"})

CREATE (AlmondMilk:Base {
	UniqueId: "AlmondMilk"})

CREATE (Orange:Fruit {
	UniqueId: "Orange"})

CREATE (Blueberry:Fruit {
	UniqueId: "Blueberry"})

CREATE (PomegranateCitrusPunchGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/pomegranate-citrus-punch",
	Description: "The Pomegranate Citrus Punch green smoothie is a great energy and immunity booster. Once you master the art of seeding a pomegranate you should celebrate with this antioxidant-rich green smoothie.",
	UniqueId: "PomegranateCitrusPunchGreenSmoothie",
	Servings: "2"})

CREATE (CoconutOil:Booster {
	UniqueId: "CoconutOil"})

CREATE (avocado:Fruit {
	UniqueId: "avocado"})

CREATE (MangoGingerImmuneSupportGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/mango-ginger-immune-support",
	Description: "Enjoy this immune boosting mango ginger green smoothie chock full of green vegetables and low in sugar. Did you know that ginger clears sinuses and soothes a sensitive stomach? Recipe submitted by Gregory Y.",
	UniqueId: "MangoGingerImmuneSupportGreenSmoothie",
	Servings: "2"})

CREATE (Lime:Fruit {
	UniqueId: "Lime"})

CREATE (BokChoy:Green {
	UniqueId: "BokChoy"})

CREATE (CilantroMangoDetoxGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/cilantro-mango-detox",
	Description: "Enjoy this cilantro-based green smoothie which is a great way to help cleanse your body of icky toxins.",
	UniqueId: "CilantroMangoDetoxGreenSmoothie",
	Servings: "2"})

CREATE (FreeRadicalFightingSuperGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/free-radical-fighting-super-smoothie",
	Description: "Try this Free Radical Fighting Super Smoothie once youve moved beyond the beginning stages of green smoothies. Cantaloupes are a rich source of vitamin A (as beta-carotene) and vitamin C which are important immunity and antioxidant vitamins. They also contain good levels of B vitamins and vitamin K. Blueberry rank the highest for antioxidants when it comes to fruit. And these tiny berries are full of vitamin C and fiber. Mint helps soothe your stomach and stimulates digestion of fats. Lets blend breakfast together!",
	UniqueId: "FreeRadicalFightingSuperGreenSmoothie",
	Servings: "2"})

CREATE (Cranberries:Fruit {
	UniqueId: "Cranberries"})

CREATE (PineappleKaleCoconutOilGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/pineapple-kale-coconut-oil",
	Description: "Try this nutrient-packed green smoothie with fresh cut pineapple kale and coconut oil. Coconut oil has some amazing health benefits such as increasing metabolism and endurance which is great if you workout or are running after little ones all day.",
	UniqueId: "PineappleKaleCoconutOilGreenSmoothie",
	Servings: "2"})

CREATE (BeginnersLuck:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/beginners-luck",
	Description: "The Beginners Luck Green Smoothie is a great starter smoothie for beginners. Its full of iron potassium and vitamins galore and tastes like a tropical treat from all the island fruit. So head to the grocery store now and give this smoothie a try. We have a feeling you will be pleasantly surprised.",
	UniqueId: "BeginnersLuck",
	Servings: "2"})

CREATE (CilantroLimeadeGreenSmoothie:Recipe {
	SourceUrl: "http://simplegreensmoothies.com/Recipes/cilantro-limeade",
	Description: "No description",
	UniqueId: "CilantroLimeadeGreenSmoothie",
	Servings: "2"})

CREATE (PomegranateSeeds:Fruit {
	UniqueId: "PomegranateSeeds"})

CREATE (GroundCinnamon)-[:IN {quantity: "0.0208cups"}]->(ThanksgivingInYourMouthGreenSmoothie)

CREATE (GroundCinnamon)-[:IN {quantity: "0.0208cups"}]->(ASweetPearGreenSmoothie)

CREATE (Carrot)-[:IN {quantity: "2"}]->(BeginnersLuckWithTopsGreenSmoothie)

CREATE (Cantaloupe)-[:IN {quantity: "2cups"}]->(FreeRadicalFightingSuperGreenSmoothie)

CREATE (Cantaloupe)-[:IN {quantity: "0.5"}]->(CantaloupeGrapeSweetnessGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "3"}]->(AvoBananaKaleGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "2"}]->(CranberryKaleCoolerGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(PineappleKaleCoconutOilGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "2"}]->(AlmondButterAndJellyGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(BerryProteinBashGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(ASweetPearGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(PomegranateCitrusPunchGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(BerryCherryJubileeGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "2"}]->(ChocolateCoveredCherryGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(KiwiBerryPunchGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "2"}]->(HealingCranberryCleanserGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(KiwiStrawberryTwistGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "2"}]->(StrawberryBananaBlueberryGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "2"}]->(BeginnersLuck)

CREATE (Banana)-[:IN {quantity: "3"}]->(CilantroLimeadeGreenSmoothie)

CREATE (Banana)-[:IN {quantity: "1"}]->(BeginnersLuckWithTopsGreenSmoothie)

CREATE (AlmondButter)-[:IN {quantity: "0.25cups"}]->(AlmondButterAndJellyGreenSmoothie)

CREATE (Rasberry)-[:IN {quantity: "0.5cups"}]->(KiwiBerryPunchGreenSmoothie)

CREATE (OrangeJuice)-[:IN {quantity: "0.75cups"}]->(StrawberryBananaBlueberryGreenSmoothie)

CREATE (OrangeJuice)-[:IN {quantity: "1cups"}]->(PomegranateCitrusPunchGreenSmoothie)

CREATE (OrangeJuice)-[:IN {quantity: "2cups"}]->(KiwiStrawberryTwistGreenSmoothie)

CREATE (Celery)-[:IN {quantity: "1cups"}]->(MangoGingerImmuneSupportGreenSmoothie)

CREATE (Lemon)-[:IN {quantity: "1"}]->(MangoGingerImmuneSupportGreenSmoothie)

CREATE (Cilantro)-[:IN {quantity: "0.5cups"}]->(CilantroLimeadeGreenSmoothie)

CREATE (Cilantro)-[:IN {quantity: "0.5cups"}]->(CilantroMangoDetoxGreenSmoothie)

CREATE (Parsley)-[:IN {quantity: "1cups"}]->(MangoGingerImmuneSupportGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(SPASkinCleanseGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(FreeRadicalFightingSuperGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(PinaColadaGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "1cups"}]->(SunshineInAJarGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(BerryCherryJubileeGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(AlmondButterAndJellyGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(BerryProteinBashGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(CantaloupeGrapeSweetnessGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2 cups"}]->(PomegranateCitrusPunchGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "1.5cups"}]->(CilantroLimeadeGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "1.5cups"}]->(StrawberryAndMintPopsicle)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(ThanksgivingInYourMouthGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(ChocolateCoveredCherryGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(KiwiBerryPunchGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(ASweetPearGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(StrawberryBananaBlueberryGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(BeginnersLuck)

CREATE (Spinach)-[:IN {quantity: "2cups"}]->(PeachCoconutDreamGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "1.5cups"}]->(CilantroMangoDetoxGreenSmoothie)

CREATE (Spinach)-[:IN {quantity: "1.5cups"}]->(BeginnersLuckWithTopsGreenSmoothie)

CREATE (Ginger)-[:IN {quantity: "1inch"}]->(MangoGingerImmuneSupportGreenSmoothie)

CREATE (Ginger)-[:IN {quantity: "1inch"}]->(CilantroLimeadeGreenSmoothie)

CREATE (honey)-[:IN {quantity: "0.25"}]->(StrawberryAndMintPopsicle)

CREATE (Mint)-[:IN {quantity: "0.5cups"}]->(StrawberryAndMintPopsicle)

CREATE (Mint)-[:IN {quantity: "1"}]->(FreeRadicalFightingSuperGreenSmoothie)

CREATE (CoconutWater)-[:IN {quantity: "2cups"}]->(SPASkinCleanseGreenSmoothie)

CREATE (CoconutWater)-[:IN {quantity: "0.5cups"}]->(PinaColadaGreenSmoothie)

CREATE (CoconutWater)-[:IN {quantity: "1cups"}]->(PeachCoconutDreamGreenSmoothie)

CREATE (Grapes)-[:IN {quantity: "1cups"}]->(CantaloupeGrapeSweetnessGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(AvoBananaKaleGreenSmoothie)

CREATE (Water)-[:IN {quantity: "0.5cups"}]->(CranberryKaleCoolerGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(BerryCherryJubileeGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(MangoGingerImmuneSupportGreenSmoothie)

CREATE (Water)-[:IN {quantity: "1cups"}]->(FreeRadicalFightingSuperGreenSmoothie)

CREATE (Water)-[:IN {quantity: "0.5cups"}]->(CantaloupeGrapeSweetnessGreenSmoothie)

CREATE (Water)-[:IN {quantity: "1cups"}]->(PomegranateCitrusPunchGreenSmoothie)

CREATE (Water)-[:IN {quantity: "0.25cups"}]->(ThanksgivingInYourMouthGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(PineappleKaleCoconutOilGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(KiwiBerryPunchGreenSmoothie)

CREATE (Water)-[:IN {quantity: "1cup"}]->(HealingCranberryCleanserGreenSmoothie)

CREATE (Water)-[:IN {quantity: "0.75cups"}]->(StrawberryBananaBlueberryGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(BeginnersLuck)

CREATE (Water)-[:IN {quantity: "2cups"}]->(CilantroLimeadeGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(CilantroMangoDetoxGreenSmoothie)

CREATE (Water)-[:IN {quantity: "2cups"}]->(BeginnersLuckWithTopsGreenSmoothie)

CREATE (Kiwi)-[:IN {quantity: "1"}]->(KiwiBerryPunchGreenSmoothie)

CREATE (Kiwi)-[:IN {quantity: "2"}]->(KiwiStrawberryTwistGreenSmoothie)

CREATE (Peaches)-[:IN {quantity: "2cups"}]->(StrawberryPeachRefresherGreenSmoothie)

CREATE (CoconutMilk)-[:IN {quantity: "0.25"}]->(StrawberryAndMintPopsicle)

CREATE (LemonJuice)-[:IN {quantity: "1"}]->(KiwiStrawberryTwistGreenSmoothie)

CREATE (Pear)-[:IN {quantity: "4"}]->(ASweetPearGreenSmoothie)

CREATE (Apple)-[:IN {quantity: "1"}]->(FreeRadicalFightingSuperGreenSmoothie)

CREATE (BloodOrange)-[:IN {quantity: "2"}]->(CranberryKaleCoolerGreenSmoothie)

CREATE (NavelOrangeJuice)-[:IN {quantity: "3"}]->(SunshineInAJarGreenSmoothie)

CREATE (Strawberry)-[:IN {quantity: "2cups"}]->(StrawberryAndMintPopsicle)

CREATE (Strawberry)-[:IN {quantity: "1cups"}]->(BerryProteinBashGreenSmoothie)

CREATE (Strawberry)-[:IN {quantity: "2cups"}]->(KiwiStrawberryTwistGreenSmoothie)

CREATE (Strawberry)-[:IN {quantity: "1cups"}]->(StrawberryPeachRefresherGreenSmoothie)

CREATE (Strawberry)-[:IN {quantity: "1cups"}]->(StrawberryBananaBlueberryGreenSmoothie)

CREATE (Kale)-[:IN {quantity: "2cups"}]->(HealingCranberryCleanserGreenSmoothie)

CREATE (Kale)-[:IN {quantity: "2cups"}]->(AvoBananaKaleGreenSmoothie)

CREATE (Kale)-[:IN {quantity: "2cups"}]->(PineappleKaleCoconutOilGreenSmoothie)

CREATE (Kale)-[:IN {quantity: "2cups"}]->(CranberryKaleCoolerGreenSmoothie)

CREATE (Kale)-[:IN {quantity: "2cups"}]->(KiwiStrawberryTwistGreenSmoothie)

CREATE (CacaoPowder)-[:IN {quantity: "0.1875cups"}]->(ChocolateCoveredCherryGreenSmoothie)

CREATE (GroundNutmeg)-[:IN {quantity: "0.208cups"}]->(ThanksgivingInYourMouthGreenSmoothie)

CREATE (CucumberPeeled)-[:IN {quantity: "1"}]->(MangoGingerImmuneSupportGreenSmoothie)

CREATE (Raspberries)-[:IN {quantity: "0.5cups"}]->(BerryCherryJubileeGreenSmoothie)

CREATE (Almond)-[:IN {quantity: "0.5cups"}]->(BerryProteinBashGreenSmoothie)

CREATE (Cinnamon)-[:IN {quantity: "0.208cups"}]->(ChocolateCoveredCherryGreenSmoothie)

CREATE (Pineapple)-[:IN {quantity: "2cups"}]->(SPASkinCleanseGreenSmoothie)

CREATE (Pineapple)-[:IN {quantity: "2cups"}]->(PineappleKaleCoconutOilGreenSmoothie)

CREATE (Pineapple)-[:IN {quantity: "3cups"}]->(PinaColadaGreenSmoothie)

CREATE (Pineapple)-[:IN {quantity: "3cups"}]->(SunshineInAJarGreenSmoothie)

CREATE (Pineapple)-[:IN {quantity: "1cups"}]->(BeginnersLuck)

CREATE (Pineapple)-[:IN {quantity: "1cup"}]->(CilantroMangoDetoxGreenSmoothie)

CREATE (Pineapple)-[:IN {quantity: "1cups"}]->(BeginnersLuckWithTopsGreenSmoothie)

CREATE (Collards)-[:IN {quantity: "1cups"}]->(SunshineInAJarGreenSmoothie)

CREATE (SweetPotato)-[:IN {quantity: "1cups"}]->(ThanksgivingInYourMouthGreenSmoothie)

CREATE (Grape)-[:IN {quantity: "2cups"}]->(AlmondButterAndJellyGreenSmoothie)

CREATE (Grape)-[:IN {quantity: "2cups"}]->(PeachCoconutDreamGreenSmoothie)

CREATE (Avocado)-[:IN {quantity: "1"}]->(SPASkinCleanseGreenSmoothie)

CREATE (Avocado)-[:IN {quantity: "0.5"}]->(KiwiBerryPunchGreenSmoothie)

CREATE (Avocado)-[:IN {quantity: "0.5"}]->(CilantroMangoDetoxGreenSmoothie)

CREATE (Peache)-[:IN {quantity: "2"}]->(PeachCoconutDreamGreenSmoothie)

CREATE (CranberryJuice)-[:IN {quantity: "1.5cups"}]->(CranberryKaleCoolerGreenSmoothie)

CREATE (Cherries)-[:IN {quantity: "2cups"}]->(ChocolateCoveredCherryGreenSmoothie)

CREATE (Cherries)-[:IN {quantity: "1cup"}]->(BerryCherryJubileeGreenSmoothie)

CREATE (LimeJuice)-[:IN {quantity: "0.5"}]->(FreeRadicalFightingSuperGreenSmoothie)

CREATE (Mango)-[:IN {quantity: "3cups"}]->(MangoGingerImmuneSupportGreenSmoothie)

CREATE (Mango)-[:IN {quantity: "2cups"}]->(ThanksgivingInYourMouthGreenSmoothie)

CREATE (Mango)-[:IN {quantity: "1cups"}]->(BeginnersLuck)

CREATE (Mango)-[:IN {quantity: "1.5cups"}]->(CilantroMangoDetoxGreenSmoothie)

CREATE (Mango)-[:IN {quantity: "1cups"}]->(BeginnersLuckWithTopsGreenSmoothie)

CREATE (CoconutFlakes)-[:IN {quantity: "0.125cups"}]->(PinaColadaGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "2cups"}]->(ThanksgivingInYourMouthGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "2cups"}]->(ChocolateCoveredCherryGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "1.5cups"}]->(PinaColadaGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "2cups"}]->(ASweetPearGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "2cups"}]->(AlmondButterAndJellyGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "2cups"}]->(BerryProteinBashGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "2cups"}]->(StrawberryPeachRefresherGreenSmoothie)

CREATE (AlmondMilk)-[:IN {quantity: "1cups"}]->(CantaloupeGrapeSweetnessGreenSmoothie)

CREATE (Orange)-[:IN {quantity: "2"}]->(HealingCranberryCleanserGreenSmoothie)

CREATE (Blueberry)-[:IN {quantity: "1cups"}]->(BerryProteinBashGreenSmoothie)

CREATE (Blueberry)-[:IN {quantity: "0.5cups"}]->(FreeRadicalFightingSuperGreenSmoothie)

CREATE (Blueberry)-[:IN {quantity: "1.5cups"}]->(KiwiBerryPunchGreenSmoothie)

CREATE (Blueberry)-[:IN {quantity: "0.5cups"}]->(BerryCherryJubileeGreenSmoothie)

CREATE (Blueberry)-[:IN {quantity: "1cups"}]->(StrawberryBananaBlueberryGreenSmoothie)

CREATE (CoconutOil)-[:IN {quantity: "0.125cups"}]->(PineappleKaleCoconutOilGreenSmoothie)

CREATE (CoconutOil)-[:IN {quantity: "0.125cups"}]->(CantaloupeGrapeSweetnessGreenSmoothie)

CREATE (avocado)-[:IN {quantity: "0.25"}]->(AvoBananaKaleGreenSmoothie)

CREATE (Lime)-[:IN {quantity: "1"}]->(CilantroLimeadeGreenSmoothie)

CREATE (Lime)-[:IN {quantity: "1"}]->(CranberryKaleCoolerGreenSmoothie)

CREATE (BokChoy)-[:IN {quantity: "2cups"}]->(StrawberryPeachRefresherGreenSmoothie)

CREATE (Cranberries)-[:IN {quantity: "1cups"}]->(HealingCranberryCleanserGreenSmoothie)

CREATE (PomegranateSeeds)-[:IN {quantity: "1cups"}]->(PomegranateCitrusPunchGreenSmoothie)