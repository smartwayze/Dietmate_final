import 'package:flutter/material.dart';
import 'package:flutter/material.dart';



Map<String, List<Map<String, String>>> ingredientRecipes = {
  "potato": [
    {"name": "Mashed Potatoes", "instructions": "1. Peel and wash the potatoes thoroughly.\n2. Cut them into even-sized chunks.\n3. Boil in salted water for 15-20 minutes.\n4. Drain the water completely.\n5. Add butter, warm milk, salt, and pepper.\n6. Mash until smooth and fluffy.\n7. Taste and adjust seasoning.\n8. Serve hot as a side dish."},
    {"name": "Aloo Paratha", "instructions": "1. Boil and mash potatoes.\n2. Add chopped green chili, coriander, and spices.\n3. Knead wheat flour into soft dough.\n4. Roll dough into small discs.\n5. Fill with potato mixture.\n6. Roll into flat circles again.\n7. Cook on hot tawa with ghee.\n8. Serve with yogurt or pickle."},
    {"name": "French Fries", "instructions": "1. Peel and cut potatoes into strips.\n2. Soak in cold water for 30 minutes.\n3. Dry thoroughly with a towel.\n4. Heat oil in a deep fryer.\n5. Fry until light golden.\n6. Let them cool.\n7. Fry again until crispy.\n8. Season with salt and serve."},
    {"name": "Potato Curry", "instructions": "1. Heat oil and fry chopped onions.\n2. Add garlic, ginger, and green chili.\n3. Stir in chopped tomatoes.\n4. Add turmeric, cumin, and salt.\n5. Cook until oil separates.\n6. Add cubed potatoes and mix.\n7. Pour in water and simmer.\n8. Garnish with fresh coriander."}
  ],  "apricot": [
    {"name": "Apricot Jam", "instructions": "1. Wash and pit apricots.\n2. Chop them finely.\n3. Add sugar and lemon juice.\n4. Let it rest for 1 hour.\n5. Cook on medium heat.\n6. Stir until thickened.\n7. Pour into sterilized jars.\n8. Seal and cool."},
    {"name": "Dried Apricot Bars", "instructions": "1. Chop dried apricots.\n2. Mix with oats and honey.\n3. Add crushed nuts.\n4. Combine into thick paste.\n5. Press into pan.\n6. Chill for 2 hours.\n7. Cut into bars.\n8. Store in airtight box."},
    {"name": "Apricot Chicken", "instructions": "1. Sear chicken pieces.\n2. Blend apricots into puree.\n3. Add puree to pan with chicken.\n4. Season with salt and pepper.\n5. Simmer on low flame.\n6. Cook until thickened.\n7. Garnish with herbs.\n8. Serve hot."},
    {"name": "Apricot Smoothie", "instructions": "1. Pit and chop apricots.\n2. Add to blender.\n3. Add yogurt and milk.\n4. Add honey for sweetness.\n5. Blend until smooth.\n6. Pour into glasses.\n7. Add ice if desired.\n8. Serve chilled."}
  ],

  "banana": [
    {"name": "Banana Bread", "instructions": "1. Mash ripe bananas.\n2. Mix with sugar and eggs.\n3. Add flour, baking soda.\n4. Mix gently to form batter.\n5. Pour into greased pan.\n6. Bake at 350°F for 50 mins.\n7. Cool completely.\n8. Slice and serve."},
    {"name": "Banana Smoothie", "instructions": "1. Peel bananas.\n2. Add milk and yogurt.\n3. Add honey or sugar.\n4. Blend until creamy.\n5. Add ice cubes.\n6. Blend again.\n7. Pour into glasses.\n8. Serve cold."},
    {"name": "Banana Pancakes", "instructions": "1. Mash bananas.\n2. Mix with flour and eggs.\n3. Add milk to form batter.\n4. Heat pan with butter.\n5. Pour batter to make rounds.\n6. Cook until bubbles form.\n7. Flip and cook other side.\n8. Serve with syrup."},
    {"name": "Fried Bananas", "instructions": "1. Slice bananas lengthwise.\n2. Mix flour, sugar, and milk.\n3. Dip bananas in batter.\n4. Heat oil in pan.\n5. Fry until golden.\n6. Drain excess oil.\n7. Dust with cinnamon sugar.\n8. Serve hot."}
  ],

  "beef": [
    {"name": "Beef Biryani", "instructions": "1. Marinate beef with yogurt and spices.\n2. Cook beef until tender.\n3. Soak and boil basmati rice.\n4. Fry onions until golden.\n5. Layer rice and beef in pot.\n6. Add fried onions and mint.\n7. Cover and cook on low heat.\n8. Serve hot with raita."},
    {"name": "Beef Karahi", "instructions": "1. Heat oil and sauté beef pieces.\n2. Add garlic and ginger paste.\n3. Add chopped tomatoes.\n4. Season with spices.\n5. Cook uncovered until oil separates.\n6. Add green chilies.\n7. Simmer until thick.\n8. Garnish with coriander."},
    {"name": "Beef Steak", "instructions": "1. Choose thick beef steak cuts.\n2. Marinate with olive oil and pepper.\n3. Rest at room temperature.\n4. Preheat grill or skillet.\n5. Cook steak to preferred doneness.\n6. Flip only once for grill marks.\n7. Let it rest for 5 minutes.\n8. Serve with sauce and sides."},
    {"name": "Beef Keema", "instructions": "1. Heat oil and fry onions.\n2. Add garlic and ginger paste.\n3. Stir in minced beef.\n4. Cook until it changes color.\n5. Add spices and tomatoes.\n6. Cook until oil separates.\n7. Add peas if desired.\n8. Garnish and serve hot."}
  ],

  "bitter gourd": [
    {"name": "Stuffed Bitter Gourd", "instructions": "1. Wash and peel bitter gourds.\n2. Cut and remove seeds.\n3. Fill with spiced minced meat.\n4. Tie with thread.\n5. Shallow fry in oil.\n6. Cover and cook until soft.\n7. Remove thread.\n8. Serve with roti."},
    {"name": "Bitter Gourd Curry", "instructions": "1. Slice and salt gourds.\n2. Leave for 20 minutes.\n3. Rinse to reduce bitterness.\n4. Fry until golden.\n5. Sauté onions and tomatoes.\n6. Add spices.\n7. Add fried gourds.\n8. Simmer and serve."},
    {"name": "Bitter Gourd Chips", "instructions": "1. Slice gourds thin.\n2. Add turmeric and salt.\n3. Deep fry until crisp.\n4. Drain excess oil.\n5. Cool completely.\n6. Store in airtight jar.\n7. Serve as snack.\n8. Optional: sprinkle chaat masala."},
    {"name": "Bitter Gourd Stir Fry", "instructions": "1. Slice and soak gourds in salt water.\n2. Heat oil in pan.\n3. Add mustard seeds.\n4. Add chopped onions.\n5. Add gourds and stir fry.\n6. Cook on low heat.\n7. Add red chili and salt.\n8. Serve hot with rice."}
  ],

  "bread": [
    {"name": "Garlic Bread", "instructions": "1. Mix butter with garlic and parsley.\n2. Slice bread loaf.\n3. Spread garlic butter.\n4. Wrap in foil.\n5. Bake for 10 mins.\n6. Unwrap and bake more.\n7. Slice and serve.\n8. Optional: add cheese."},
    {"name": "Bread Pudding", "instructions": "1. Cut bread into cubes.\n2. Place in baking dish.\n3. Mix milk, sugar, and eggs.\n4. Pour over bread.\n5. Add raisins and nuts.\n6. Bake at 350°F.\n7. Cool before serving.\n8. Drizzle with syrup."},
    {"name": "Bread Roll", "instructions": "1. Flatten bread slices.\n2. Fill with potato mixture.\n3. Roll and seal edges.\n4. Dip in egg.\n5. Coat with crumbs.\n6. Fry until golden.\n7. Drain excess oil.\n8. Serve hot."},
    {"name": "French Toast", "instructions": "1. Whisk eggs, milk, sugar.\n2. Dip bread slices.\n3. Heat butter in pan.\n4. Fry both sides.\n5. Cook until golden.\n6. Serve with syrup.\n7. Add fruit topping.\n8. Enjoy warm."}
  ],

  "brinjal": [
    {"name": "Baingan Bharta", "instructions": "1. Roast brinjals.\n2. Peel and mash.\n3. Sauté onions and tomatoes.\n4. Add ginger, garlic, and spices.\n5. Mix mashed brinjal.\n6. Cook until flavors blend.\n7. Garnish with coriander.\n8. Serve hot."},
    {"name": "Stuffed Brinjal", "instructions": "1. Slit brinjals.\n2. Fill with spice mix.\n3. Heat oil in pan.\n4. Add brinjals.\n5. Cover and cook.\n6. Turn occasionally.\n7. Cook until soft.\n8. Serve with roti."},
    {"name": "Brinjal Fry", "instructions": "1. Slice brinjals.\n2. Add turmeric and salt.\n3. Let sit for 15 mins.\n4. Fry in hot oil.\n5. Cook both sides.\n6. Drain on paper.\n7. Sprinkle spices.\n8. Serve with rice."},
    {"name": "Brinjal Curry", "instructions": "1. Cut brinjals into chunks.\n2. Sauté with onions.\n3. Add tomatoes and spices.\n4. Pour in water.\n5. Simmer on low.\n6. Cook till soft.\n7. Adjust salt.\n8. Serve hot."}
  ],

  "broccali": [
    {"name": "Broccoli Stir Fry", "instructions": "1. Cut broccoli into florets.\n2. Blanch in hot water.\n3. Drain and keep aside.\n4. Heat oil and garlic.\n5. Add broccoli.\n6. Stir fry 5 minutes.\n7. Add salt and pepper.\n8. Serve hot."},
    {"name": "Broccoli Soup", "instructions": "1. Boil broccoli with onions.\n2. Blend into smooth paste.\n3. Cook in butter.\n4. Add milk or cream.\n5. Season with salt.\n6. Simmer for 10 mins.\n7. Garnish with herbs.\n8. Serve hot."},
    {"name": "Broccoli Rice", "instructions": "1. Cook rice and set aside.\n2. Stir fry broccoli in oil.\n3. Add garlic and onion.\n4. Mix with rice.\n5. Add soy sauce.\n6. Cook 5 minutes.\n7. Add salt and pepper.\n8. Serve warm."},
    {"name": "Broccoli Fritters", "instructions": "1. Grate broccoli.\n2. Mix with flour and egg.\n3. Add spices.\n4. Shape into patties.\n5. Heat oil in pan.\n6. Fry both sides.\n7. Drain on tissue.\n8. Serve with dip."}
  ],

  "cabbage": [
    {"name": "Cabbage Stir Fry", "instructions": "1. Shred cabbage.\n2. Heat oil and mustard seeds.\n3. Add chopped chili.\n4. Add cabbage.\n5. Stir fry 5 mins.\n6. Add salt.\n7. Cover and cook briefly.\n8. Serve warm."},
    {"name": "Cabbage Pakora", "instructions": "1. Chop cabbage.\n2. Add chickpea flour.\n3. Add spices and water.\n4. Make thick batter.\n5. Heat oil.\n6. Drop spoonfuls.\n7. Fry till golden.\n8. Serve with chutney."},
    {"name": "Cabbage Salad", "instructions": "1. Shred cabbage.\n2. Add carrots.\n3. Mix with vinegar and sugar.\n4. Add salt and pepper.\n5. Toss well.\n6. Chill for 1 hour.\n7. Garnish with herbs.\n8. Serve cold."},
    {"name": "Cabbage Curry", "instructions": "1. Chop cabbage.\n2. Heat oil and sauté onions.\n3. Add tomatoes and spices.\n4. Add cabbage.\n5. Mix and cover.\n6. Cook till soft.\n7. Add coriander.\n8. Serve with rice or roti."}
  ],
  "beef": [
    {"name": "Beef Biryani", "instructions": "1. Marinate beef with yogurt and spices.\n2. Cook beef until tender.\n3. Soak and boil basmati rice.\n4. Fry onions until golden.\n5. Layer rice and beef in pot.\n6. Add fried onions and mint.\n7. Cover and cook on low heat.\n8. Serve hot with raita."},
    {"name": "Beef Karahi", "instructions": "1. Heat oil and sauté beef pieces.\n2. Add garlic and ginger paste.\n3. Add chopped tomatoes.\n4. Season with spices.\n5. Cook uncovered until oil separates.\n6. Add green chilies.\n7. Simmer until thick.\n8. Garnish with coriander."},
    {"name": "Beef Steak", "instructions": "1. Choose thick beef steak cuts.\n2. Marinate with olive oil and pepper.\n3. Rest at room temperature.\n4. Preheat grill or skillet.\n5. Cook steak to preferred doneness.\n6. Flip only once for grill marks.\n7. Let it rest for 5 minutes.\n8. Serve with sauce and sides."},
    {"name": "Beef Keema", "instructions": "1. Heat oil and fry onions.\n2. Add garlic and ginger paste.\n3. Stir in minced beef.\n4. Cook until it changes color.\n5. Add spices and tomatoes.\n6. Cook until oil separates.\n7. Add peas if desired.\n8. Garnish and serve hot."}
  ],
  "apple": [
    {"name": "Apple Pie", "instructions": "1. Prepare dough and chill it.\n2. Peel and slice apples.\n3. Mix with sugar and cinnamon.\n4. Roll dough and place in pie dish.\n5. Fill with apple mixture.\n6. Cover with top crust and seal edges.\n7. Bake at 375°F for 45 minutes.\n8. Cool before serving."},
    {"name": "Apple Smoothie", "instructions": "1. Peel and core apples.\n2. Add to blender with yogurt.\n3. Add honey and cinnamon.\n4. Add some ice cubes.\n5. Blend until smooth.\n6. Pour into glasses.\n7. Garnish with apple slice.\n8. Serve chilled."},
    {"name": "Baked Apples", "instructions": "1. Core apples and place in dish.\n2. Mix brown sugar and cinnamon.\n3. Fill apples with mixture.\n4. Add butter on top.\n5. Add water to dish bottom.\n6. Bake at 350°F for 30 mins.\n7. Let cool slightly.\n8. Serve with cream."},
    {"name": "Apple Salad", "instructions": "1. Dice apples.\n2. Add chopped celery.\n3. Mix with walnuts.\n4. Add yogurt or mayo.\n5. Season with salt and pepper.\n6. Chill in fridge.\n7. Toss before serving.\n8. Garnish with mint."}
  ],
  "banana": [
    {"name": "Banana Bread", "instructions": "1. Mash ripe bananas.\n2. Mix with sugar and eggs.\n3. Add flour, baking soda.\n4. Mix gently to form batter.\n5. Pour into greased pan.\n6. Bake at 350°F for 50 mins.\n7. Cool completely.\n8. Slice and serve."},
    {"name": "Banana Smoothie", "instructions": "1. Peel bananas.\n2. Add milk and yogurt.\n3. Add honey or sugar.\n4. Blend until creamy.\n5. Add ice cubes.\n6. Blend again.\n7. Pour into glasses.\n8. Serve cold."},
    {"name": "Banana Pancakes", "instructions": "1. Mash bananas.\n2. Mix with flour and eggs.\n3. Add milk to form batter.\n4. Heat pan with butter.\n5. Pour batter to make rounds.\n6. Cook until bubbles form.\n7. Flip and cook other side.\n8. Serve with syrup."},
    {"name": "Fried Bananas", "instructions": "1. Slice bananas lengthwise.\n2. Mix flour, sugar, and milk.\n3. Dip bananas in batter.\n4. Heat oil in pan.\n5. Fry until golden.\n6. Drain excess oil.\n7. Dust with cinnamon sugar.\n8. Serve hot."}
  ],
  "yogurt": [
    {"name": "Yogurt Parfait", "instructions": "1. Layer yogurt in a glass.\n2. Add granola over yogurt.\n3. Add a layer of berries.\n4. Repeat layers as desired.\n5. Drizzle with honey.\n6. Garnish with mint.\n7. Chill before serving.\n8. Serve cold."},
    {"name": "Mint Yogurt Dip", "instructions": "1. Take plain yogurt in a bowl.\n2. Add chopped mint leaves.\n3. Mix in salt and pepper.\n4. Squeeze in lemon juice.\n5. Stir thoroughly.\n6. Chill for 15 minutes.\n7. Garnish with mint sprig.\n8. Serve as dip or side."},
    {"name": "Yogurt Smoothie", "instructions": "1. Add yogurt to blender.\n2. Add banana or strawberries.\n3. Add honey or maple syrup.\n4. Blend until smooth.\n5. Add ice cubes.\n6. Blend again.\n7. Pour into glass.\n8. Serve cold."},
    {"name": "Yogurt Curry", "instructions": "1. Whisk yogurt with water.\n2. Add turmeric and salt.\n3. Cook in pan over low heat.\n4. Add curry leaves and mustard seeds.\n5. Stir continuously.\n6. Simmer gently.\n7. Prepare tempering with spices.\n8. Pour over yogurt curry."}
  ],

  "radish": [
    {"name": "Radish Salad", "instructions": "1. Wash and peel radish.\n2. Slice into thin rounds.\n3. Sprinkle salt and let sit.\n4. Add lemon juice.\n5. Add chopped mint.\n6. Mix well.\n7. Chill in fridge.\n8. Serve cold."},
    {"name": "Radish Paratha", "instructions": "1. Grate radish and squeeze water.\n2. Mix with spices.\n3. Make dough from wheat flour.\n4. Stuff dough with radish mix.\n5. Roll into circles.\n6. Cook on hot tawa.\n7. Apply ghee and flip.\n8. Serve hot."},
    {"name": "Radish Stir Fry", "instructions": "1. Chop radish into pieces.\n2. Heat oil in pan.\n3. Add mustard seeds.\n4. Add curry leaves.\n5. Add radish and stir.\n6. Season with salt.\n7. Cook until soft.\n8. Garnish with coriander."},
    {"name": "Radish Pickle", "instructions": "1. Slice radish thinly.\n2. Add salt and let rest.\n3. Drain excess water.\n4. Mix with vinegar.\n5. Add mustard seeds.\n6. Add turmeric.\n7. Store in jar.\n8. Use after 2-3 days."}
  ],

  "chicken": [
    {"name": "Grilled Chicken", "instructions": "1. Marinate chicken with spices.\n2. Add lemon juice and yogurt.\n3. Let rest for 2 hours.\n4. Preheat grill.\n5. Place chicken on grill.\n6. Cook both sides evenly.\n7. Check doneness.\n8. Serve with dip."},
    {"name": "Chicken Curry", "instructions": "1. Sauté onions in oil.\n2. Add ginger-garlic paste.\n3. Add chicken pieces.\n4. Add tomatoes and spices.\n5. Cook until chicken is tender.\n6. Add water to adjust consistency.\n7. Simmer on low heat.\n8. Garnish with coriander."},
    {"name": "Chicken Biryani", "instructions": "1. Marinate chicken.\n2. Fry onions till golden.\n3. Partially cook rice.\n4. Layer chicken and rice.\n5. Add fried onions and saffron milk.\n6. Cover with lid.\n7. Cook on low heat (dum).\n8. Serve with raita."},
    {"name": "Chicken Nuggets", "instructions": "1. Mince chicken.\n2. Add spices and cheese.\n3. Shape into nuggets.\n4. Coat with breadcrumbs.\n5. Dip in egg.\n6. Fry until golden.\n7. Drain oil.\n8. Serve hot with ketchup."}
  ],
  "cariander": [
    {"name": "Coriander Chutney", "instructions": "1. Wash coriander leaves.\n2. Add green chili and garlic.\n3. Add lemon juice and salt.\n4. Blend with little water.\n5. Blend till smooth.\n6. Taste and adjust seasoning.\n7. Store in fridge.\n8. Serve with snacks."},
    {"name": "Coriander Rice", "instructions": "1. Cook rice and keep aside.\n2. Grind coriander with garlic.\n3. Heat oil in pan.\n4. Add mustard and curry leaves.\n5. Add coriander paste.\n6. Stir fry.\n7. Add rice and mix.\n8. Serve hot."},
    {"name": "Coriander Chicken", "instructions": "1. Marinate chicken with coriander paste.\n2. Add yogurt and spices.\n3. Let it rest 1 hour.\n4. Heat oil in pan.\n5. Cook chicken till done.\n6. Add more coriander.\n7. Simmer 5 minutes.\n8. Serve with naan."},
    {"name": "Coriander Soup", "instructions": "1. Heat oil and sauté garlic.\n2. Add chopped coriander.\n3. Pour in vegetable stock.\n4. Add salt and pepper.\n5. Simmer for 10 mins.\n6. Blend for smoothness.\n7. Reheat.\n8. Serve warm."}
  ],

  "cauli flower": [
    {"name": "Cauliflower Curry", "instructions": "1. Cut cauliflower into florets.\n2. Boil for 5 mins.\n3. Sauté onions, garlic, and tomato.\n4. Add spices.\n5. Add cauliflower.\n6. Cook covered.\n7. Simmer till tender.\n8. Garnish and serve."},
    {"name": "Gobi Paratha", "instructions": "1. Grate cauliflower.\n2. Add spices and mix.\n3. Roll dough.\n4. Stuff with mixture.\n5. Seal and flatten.\n6. Cook on tawa.\n7. Apply ghee.\n8. Serve with curd."},
    {"name": "Roasted Cauliflower", "instructions": "1. Cut florets.\n2. Toss in olive oil and spices.\n3. Preheat oven.\n4. Spread on tray.\n5. Roast at 400°F.\n6. Flip halfway.\n7. Roast till crispy.\n8. Serve hot."},
    {"name": "Cauliflower Soup", "instructions": "1. Sauté onions and garlic.\n2. Add cauliflower florets.\n3. Pour in broth.\n4. Cook until soft.\n5. Blend until smooth.\n6. Reheat with cream.\n7. Season to taste.\n8. Serve warm."}
  ],

  "chana": [
    {"name": "Chana Masala", "instructions": "1. Soak chana overnight.\n2. Boil until soft.\n3. Sauté onions and tomatoes.\n4. Add garlic and spices.\n5. Add chana.\n6. Cook till thick.\n7. Garnish with coriander.\n8. Serve with puri."},
    {"name": "Chana Chaat", "instructions": "1. Boil chana.\n2. Mix with onions and tomatoes.\n3. Add green chutney.\n4. Add spices and lemon juice.\n5. Mix well.\n6. Garnish with coriander.\n7. Chill before serving.\n8. Serve as snack."},
    {"name": "Chana Pulao", "instructions": "1. Sauté onions in oil.\n2. Add soaked chana.\n3. Add spices and rice.\n4. Pour water.\n5. Cook till rice is done.\n6. Let rest 5 mins.\n7. Fluff gently.\n8. Serve hot."},
    {"name": "Chana Soup", "instructions": "1. Blend boiled chana.\n2. Heat oil and add garlic.\n3. Add chana paste.\n4. Add stock.\n5. Season with spices.\n6. Simmer 10 mins.\n7. Garnish with herbs.\n8. Serve hot."}
  ],

  "chiaseeds": [
    {"name": "Chia Pudding", "instructions": "1. Mix chia with milk.\n2. Add honey.\n3. Stir well.\n4. Refrigerate overnight.\n5. Stir again.\n6. Add fruits.\n7. Garnish with nuts.\n8. Serve cold."},
    {"name": "Chia Smoothie", "instructions": "1. Soak chia seeds.\n2. Blend fruits and yogurt.\n3. Add chia.\n4. Add milk.\n5. Blend again.\n6. Pour into glass.\n7. Chill before serving.\n8. Garnish."},
    {"name": "Chia Lemon Water", "instructions": "1. Soak chia seeds.\n2. Add to cold water.\n3. Squeeze lemon.\n4. Add honey.\n5. Mix well.\n6. Chill for 10 mins.\n7. Stir before drinking.\n8. Serve cold."},
    {"name": "Chia Muffins", "instructions": "1. Soak chia seeds.\n2. Mix flour, sugar, and baking soda.\n3. Add wet ingredients.\n4. Add chia and stir.\n5. Pour into molds.\n6. Bake at 350°F.\n7. Cool completely.\n8. Serve."}
  ],

  "chicken": [
    {"name": "Grilled Chicken", "instructions": "1. Marinate chicken with spices.\n2. Add lemon juice and yogurt.\n3. Let rest for 2 hours.\n4. Preheat grill.\n5. Place chicken on grill.\n6. Cook both sides evenly.\n7. Check doneness.\n8. Serve with dip."},
    {"name": "Chicken Curry", "instructions": "1. Sauté onions in oil.\n2. Add ginger-garlic paste.\n3. Add chicken pieces.\n4. Add tomatoes and spices.\n5. Cook until chicken is tender.\n6. Add water to adjust consistency.\n7. Simmer on low heat.\n8. Garnish with coriander."},
    {"name": "Chicken Biryani", "instructions": "1. Marinate chicken.\n2. Fry onions till golden.\n3. Partially cook rice.\n4. Layer chicken and rice.\n5. Add fried onions and saffron milk.\n6. Cover with lid.\n7. Cook on low heat (dum).\n8. Serve with raita."},
    {"name": "Chicken Nuggets", "instructions": "1. Mince chicken.\n2. Add spices and cheese.\n3. Shape into nuggets.\n4. Coat with breadcrumbs.\n5. Dip in egg.\n6. Fry until golden.\n7. Drain oil.\n8. Serve hot with ketchup."}
  ],

  "coffebeans": [
    {"name": "Cold Coffee", "instructions": "1. Brew coffee.\n2. Let it cool.\n3. Blend with milk and sugar.\n4. Add ice cubes.\n5. Blend again.\n6. Pour into glass.\n7. Top with cream.\n8. Serve chilled."},
    {"name": "Espresso Shot", "instructions": "1. Grind beans fine.\n2. Add to espresso machine.\n3. Pack evenly.\n4. Brew under pressure.\n5. Extract shot.\n6. Pour in small cup.\n7. Add sugar if needed.\n8. Serve hot."},
    {"name": "Coffee Cake", "instructions": "1. Brew strong coffee.\n2. Mix dry ingredients.\n3. Add wet ingredients.\n4. Mix well.\n5. Pour into pan.\n6. Bake at 350°F.\n7. Cool and frost.\n8. Slice and serve."},
    {"name": "Coffee Ice Cream", "instructions": "1. Brew coffee and chill.\n2. Mix cream and sugar.\n3. Add coffee.\n4. Pour into ice cream maker.\n5. Churn till thick.\n6. Freeze 4 hours.\n7. Scoop and serve.\n8. Garnish with beans."}
  ],

  "cucumber": [
    {"name": "Cucumber Salad", "instructions": "1. Slice cucumbers.\n2. Add onion and tomatoes.\n3. Drizzle lemon juice.\n4. Add salt and pepper.\n5. Toss gently.\n6. Chill before serving.\n7. Garnish with mint.\n8. Serve cold."},
    {"name": "Cucumber Raita", "instructions": "1. Grate cucumber.\n2. Add to yogurt.\n3. Add salt and cumin.\n4. Mix well.\n5. Chill for 30 minutes.\n6. Sprinkle chili powder.\n7. Garnish with coriander.\n8. Serve with biryani."},
    {"name": "Cucumber Sandwich", "instructions": "1. Slice cucumbers.\n2. Spread butter on bread.\n3. Add cucumber slices.\n4. Sprinkle salt and pepper.\n5. Add top slice.\n6. Cut diagonally.\n7. Wrap if packing.\n8. Serve fresh."},
    {"name": "Cucumber Juice", "instructions": "1. Peel cucumbers.\n2. Blend with mint.\n3. Add lemon juice.\n4. Strain if needed.\n5. Add salt.\n6. Chill in fridge.\n7. Stir before serving.\n8. Serve cold."}
  ],

  "dates": [
    {"name": "Stuffed Dates", "instructions": "1. Pit dates.\n2. Fill with nuts.\n3. Add cream cheese.\n4. Sprinkle coconut.\n5. Arrange on tray.\n6. Chill for 10 mins.\n7. Garnish with almonds.\n8. Serve."},
    {"name": "Date Smoothie", "instructions": "1. Soak dates.\n2. Blend with milk.\n3. Add banana.\n4. Add honey.\n5. Blend till smooth.\n6. Pour into glass.\n7. Add ice cubes.\n8. Serve chilled."},
    {"name": "Date Balls", "instructions": "1. Chop dates.\n2. Mix with nuts.\n3. Add honey and oats.\n4. Form into balls.\n5. Roll in coconut.\n6. Chill for 30 mins.\n7. Store airtight.\n8. Serve."},
    {"name": "Date Cake", "instructions": "1. Soak dates in milk.\n2. Mix flour and sugar.\n3. Add soaked dates.\n4. Add baking soda.\n5. Mix well.\n6. Bake at 350°F.\n7. Cool completely.\n8. Slice and serve."}
  ],
  "egg": [
    {"name": "Boiled Eggs", "instructions": "1. Place eggs in saucepan.\n2. Cover with cold water.\n3. Bring to boil.\n4. Turn off heat.\n5. Cover for 8–10 mins.\n6. Drain and cool.\n7. Peel eggs.\n8. Serve with salt."},
    {"name": "Omelette", "instructions": "1. Crack eggs in bowl.\n2. Add salt and pepper.\n3. Whisk thoroughly.\n4. Heat butter in pan.\n5. Pour egg mix.\n6. Cook until set.\n7. Fold in half.\n8. Serve hot."},
    {"name": "Egg Curry", "instructions": "1. Boil and peel eggs.\n2. Sauté onions and tomatoes.\n3. Add spices.\n4. Add eggs.\n5. Stir gently.\n6. Add water.\n7. Simmer 10 mins.\n8. Garnish and serve."},
    {"name": "Scrambled Eggs", "instructions": "1. Beat eggs with milk.\n2. Add salt and pepper.\n3. Heat butter in pan.\n4. Pour mixture.\n5. Stir continuously.\n6. Cook to soft curds.\n7. Remove from heat.\n8. Serve immediately."}
  ],

  "garlic": [
    {"name": "Garlic Bread", "instructions": "1. Mix garlic with butter.\n2. Add chopped parsley.\n3. Spread on bread.\n4. Wrap in foil.\n5. Bake at 375°F.\n6. Unwrap and crisp.\n7. Slice and serve.\n8. Optionally add cheese."},
    {"name": "Garlic Soup", "instructions": "1. Peel garlic cloves.\n2. Sauté in butter.\n3. Add stock.\n4. Simmer 20 mins.\n5. Blend smooth.\n6. Add cream.\n7. Reheat and season.\n8. Serve warm."},
    {"name": "Garlic Pickle", "instructions": "1. Peel garlic cloves.\n2. Heat mustard oil.\n3. Add mustard seeds.\n4. Add garlic.\n5. Fry for 3 mins.\n6. Add spices.\n7. Store in jar.\n8. Use after 3 days."},
    {"name": "Garlic Pasta", "instructions": "1. Boil pasta.\n2. Sauté garlic in olive oil.\n3. Add chili flakes.\n4. Add pasta.\n5. Toss well.\n6. Add parmesan.\n7. Garnish with parsley.\n8. Serve hot."}
  ],

  "grapes": [
    {"name": "Grape Juice", "instructions": "1. Wash grapes.\n2. Blend with water.\n3. Strain juice.\n4. Add lemon juice.\n5. Add sugar if needed.\n6. Chill in fridge.\n7. Stir before serving.\n8. Serve cold."},
    {"name": "Grape Salad", "instructions": "1. Wash grapes.\n2. Halve them.\n3. Add cream cheese.\n4. Add sour cream.\n5. Mix sugar.\n6. Chill for 1 hour.\n7. Sprinkle nuts.\n8. Serve cold."},
    {"name": "Frozen Grapes", "instructions": "1. Wash and dry grapes.\n2. Spread on tray.\n3. Freeze 4 hrs.\n4. Transfer to container.\n5. Store in freezer.\n6. Serve as snack.\n7. Optional: add lemon juice.\n8. Enjoy cold."},
    {"name": "Grape Jam", "instructions": "1. Mash grapes.\n2. Add sugar.\n3. Cook in pan.\n4. Stir constantly.\n5. Cook till thick.\n6. Pour in jars.\n7. Cool completely.\n8. Seal and store."}
  ],

  "green chilli": [
    {"name": "Green Chilli Pickle", "instructions": "1. Slit chillies.\n2. Stuff with mustard mix.\n3. Heat oil.\n4. Add asafoetida.\n5. Add chillies.\n6. Fry lightly.\n7. Cool and store.\n8. Use after 3 days."},
    {"name": "Chilli Pakora", "instructions": "1. Slit chillies.\n2. Dip in gram flour batter.\n3. Heat oil.\n4. Deep fry.\n5. Fry until golden.\n6. Drain oil.\n7. Sprinkle chaat masala.\n8. Serve hot."},
    {"name": "Spicy Chilli Chutney", "instructions": "1. Blend green chillies.\n2. Add garlic and salt.\n3. Add lemon juice.\n4. Blend into paste.\n5. Heat oil.\n6. Add paste.\n7. Cook 5 mins.\n8. Cool and serve."},
    {"name": "Stuffed Green Chilli", "instructions": "1. Mix spices.\n2. Slit chillies.\n3. Stuff mixture.\n4. Heat oil.\n5. Fry chillies.\n6. Cover and cook.\n7. Turn occasionally.\n8. Serve as side dish."}
  ],

  "kiwi": [
    {"name": "Kiwi Smoothie", "instructions": "1. Peel kiwis.\n2. Add to blender.\n3. Add yogurt.\n4. Add honey.\n5. Blend until smooth.\n6. Add ice cubes.\n7. Blend again.\n8. Serve chilled."},
    {"name": "Kiwi Salsa", "instructions": "1. Chop kiwis.\n2. Add onion and tomatoes.\n3. Add cilantro and lime juice.\n4. Season with salt.\n5. Mix well.\n6. Chill 30 mins.\n7. Stir before serving.\n8. Serve with chips."},
    {"name": "Kiwi Popsicles", "instructions": "1. Puree kiwis.\n2. Add sugar or honey.\n3. Pour in molds.\n4. Insert sticks.\n5. Freeze overnight.\n6. Remove from mold.\n7. Serve immediately.\n8. Store in freezer."},
    {"name": "Kiwi Salad", "instructions": "1. Slice kiwis.\n2. Mix with lettuce and fruits.\n3. Add lemon dressing.\n4. Toss gently.\n5. Chill in fridge.\n6. Sprinkle seeds.\n7. Serve cold.\n8. Enjoy fresh."}
  ],

  "lady finger": [
    {"name": "Bhindi Fry", "instructions": "1. Wash and dry bhindi.\n2. Cut into pieces.\n3. Heat oil in pan.\n4. Add cumin.\n5. Add bhindi.\n6. Stir fry 10 mins.\n7. Add spices.\n8. Serve hot."},
    {"name": "Stuffed Bhindi", "instructions": "1. Slit bhindi.\n2. Mix spices.\n3. Fill bhindi.\n4. Heat oil.\n5. Add bhindi.\n6. Cover and cook.\n7. Turn sides.\n8. Serve with roti."},
    {"name": "Bhindi Masala", "instructions": "1. Sauté onions.\n2. Add tomatoes and spices.\n3. Add chopped bhindi.\n4. Cook covered.\n5. Stir occasionally.\n6. Cook till soft.\n7. Garnish with coriander.\n8. Serve hot."},
    {"name": "Bhindi Kurkuri", "instructions": "1. Slice bhindi thin.\n2. Add spices and rice flour.\n3. Mix well.\n4. Heat oil.\n5. Deep fry till crispy.\n6. Drain excess oil.\n7. Sprinkle chaat masala.\n8. Serve hot."}
  ],

  "lemon": [
    {"name": "Lemonade", "instructions": "1. Squeeze lemons.\n2. Add sugar and water.\n3. Stir well.\n4. Add ice cubes.\n5. Add mint leaves.\n6. Mix again.\n7. Chill in fridge.\n8. Serve cold."},
    {"name": "Lemon Rice", "instructions": "1. Cook rice.\n2. Heat oil.\n3. Add mustard and curry leaves.\n4. Add green chili.\n5. Add rice.\n6. Add lemon juice.\n7. Mix well.\n8. Serve hot."},
    {"name": "Lemon Pickle", "instructions": "1. Cut lemons.\n2. Add salt and turmeric.\n3. Let sit in sun.\n4. Add mustard seeds.\n5. Heat oil.\n6. Mix and store.\n7. Rest for 3 days.\n8. Serve with meals."},
    {"name": "Lemon Cake", "instructions": "1. Mix flour, sugar, and butter.\n2. Add lemon zest.\n3. Add lemon juice.\n4. Pour into pan.\n5. Bake at 350°F.\n6. Cool on rack.\n7. Add lemon glaze.\n8. Serve sliced."}
  ],

  "lettuce": [
    {"name": "Lettuce Salad", "instructions": "1. Wash lettuce leaves.\n2. Tear into pieces.\n3. Add cherry tomatoes.\n4. Add cucumber slices.\n5. Add dressing.\n6. Toss well.\n7. Chill for 15 mins.\n8. Serve fresh."},
    {"name": "Lettuce Wraps", "instructions": "1. Wash and dry lettuce.\n2. Prepare filling.\n3. Spoon filling in leaves.\n4. Fold gently.\n5. Arrange on plate.\n6. Serve with dip.\n7. Garnish with herbs.\n8. Enjoy fresh."},
    {"name": "Lettuce Sandwich", "instructions": "1. Toast bread.\n2. Spread mayonnaise.\n3. Add lettuce and veggies.\n4. Sprinkle salt.\n5. Add cheese slice.\n6. Cover with bread.\n7. Cut diagonally.\n8. Serve fresh."},
    {"name": "Lettuce Juice", "instructions": "1. Wash lettuce.\n2. Blend with apple.\n3. Add lemon juice.\n4. Strain if needed.\n5. Chill in fridge.\n6. Stir before serving.\n7. Pour into glasses.\n8. Serve cold."}
  ], "lettuce": [
    {"name": "Lettuce Salad", "instructions": "1. Wash lettuce leaves.\n2. Tear into pieces.\n3. Add cherry tomatoes.\n4. Add cucumber slices.\n5. Add dressing.\n6. Toss well.\n7. Chill for 15 mins.\n8. Serve fresh."},
    {"name": "Lettuce Wraps", "instructions": "1. Wash and dry lettuce.\n2. Prepare filling.\n3. Spoon filling in leaves.\n4. Fold gently.\n5. Arrange on plate.\n6. Serve with dip.\n7. Garnish with herbs.\n8. Enjoy fresh."},
    {"name": "Lettuce Sandwich", "instructions": "1. Toast bread.\n2. Spread mayonnaise.\n3. Add lettuce and veggies.\n4. Sprinkle salt.\n5. Add cheese slice.\n6. Cover with bread.\n7. Cut diagonally.\n8. Serve fresh."},
    {"name": "Lettuce Juice", "instructions": "1. Wash lettuce.\n2. Blend with apple.\n3. Add lemon juice.\n4. Strain if needed.\n5. Chill in fridge.\n6. Stir before serving.\n7. Pour into glasses.\n8. Serve cold."}
  ],

  "mango": [
    {"name": "Mango Shake", "instructions": "1. Peel and chop mangoes.\n2. Add milk and sugar.\n3. Blend until smooth.\n4. Add ice cubes.\n5. Blend again.\n6. Pour into glass.\n7. Garnish with mango chunks.\n8. Serve chilled."},
    {"name": "Mango Ice Cream", "instructions": "1. Puree mangoes.\n2. Add cream and sugar.\n3. Mix well.\n4. Pour into container.\n5. Freeze for 2 hrs.\n6. Stir and refreeze.\n7. Repeat twice.\n8. Serve scooped."},
    {"name": "Mango Chutney", "instructions": "1. Chop raw mangoes.\n2. Cook with sugar and spices.\n3. Stir continuously.\n4. Simmer until thick.\n5. Cool and bottle.\n6. Refrigerate.\n7. Use with snacks.\n8. Serve chilled."},
    {"name": "Mango Lassi", "instructions": "1. Blend mango and yogurt.\n2. Add sugar and cardamom.\n3. Add water to dilute.\n4. Blend till frothy.\n5. Chill 30 mins.\n6. Stir before serving.\n7. Pour into glasses.\n8. Garnish with mint."}
  ],

  "milk": [
    {"name": "Milkshake", "instructions": "1. Choose a fruit.\n2. Add to blender with milk.\n3. Add sugar or honey.\n4. Blend till smooth.\n5. Add ice cubes.\n6. Blend again.\n7. Pour into glass.\n8. Serve chilled."},
    {"name": "Custard", "instructions": "1. Mix custard powder in milk.\n2. Boil remaining milk.\n3. Add sugar.\n4. Stir in custard mix.\n5. Cook till thick.\n6. Cool and refrigerate.\n7. Add fruits.\n8. Serve cold."},
    {"name": "Rice Kheer", "instructions": "1. Boil milk.\n2. Add washed rice.\n3. Cook on low flame.\n4. Stir regularly.\n5. Add sugar and cardamom.\n6. Simmer till creamy.\n7. Add nuts.\n8. Serve hot or cold."},
    {"name": "Hot Chocolate", "instructions": "1. Heat milk.\n2. Add cocoa powder.\n3. Add sugar.\n4. Stir until dissolved.\n5. Simmer 2 mins.\n6. Pour into cup.\n7. Add whipped cream.\n8. Serve hot."}
  ],

  "onion": [
    {"name": "Onion Rings", "instructions": "1. Slice onions into rings.\n2. Prepare batter.\n3. Dip rings.\n4. Heat oil.\n5. Deep fry till golden.\n6. Drain excess oil.\n7. Sprinkle salt.\n8. Serve hot."},
    {"name": "Onion Pakora", "instructions": "1. Slice onions thin.\n2. Mix with gram flour and spices.\n3. Add little water.\n4. Mix into batter.\n5. Heat oil.\n6. Fry spoonfuls.\n7. Cook till crispy.\n8. Serve with chutney."},
    {"name": "Caramelized Onions", "instructions": "1. Slice onions.\n2. Heat butter.\n3. Add onions.\n4. Cook slowly.\n5. Stir often.\n6. Cook till brown.\n7. Add salt.\n8. Use in dishes."},
    {"name": "Onion Soup", "instructions": "1. Slice onions.\n2. Sauté in butter.\n3. Add flour.\n4. Add broth.\n5. Simmer 20 mins.\n6. Add herbs.\n7. Top with bread & cheese.\n8. Serve hot."}
  ],

  "orange": [
    {"name": "Orange Juice", "instructions": "1. Peel oranges.\n2. Remove seeds.\n3. Blend or press.\n4. Strain juice.\n5. Chill before serving.\n6. Add ice cubes.\n7. Optional: sugar.\n8. Serve cold."},
    {"name": "Orange Smoothie", "instructions": "1. Peel oranges.\n2. Add to blender.\n3. Add yogurt and honey.\n4. Add banana (optional).\n5. Blend smooth.\n6. Add ice.\n7. Blend again.\n8. Serve chilled."},
    {"name": "Candied Orange Peel", "instructions": "1. Peel oranges.\n2. Cut into strips.\n3. Boil in water.\n4. Simmer in sugar syrup.\n5. Dry on rack.\n6. Roll in sugar.\n7. Store airtight.\n8. Serve as snack."},
    {"name": "Orange Cake", "instructions": "1. Mix flour, sugar, and butter.\n2. Add orange juice.\n3. Add zest.\n4. Mix into batter.\n5. Pour into pan.\n6. Bake at 350°F.\n7. Cool and frost.\n8. Serve sliced."}
  ],

  "pea": [
    {"name": "Pea Pulao", "instructions": "1. Sauté onions.\n2. Add peas.\n3. Add soaked rice.\n4. Add spices and water.\n5. Cook covered.\n6. Simmer till done.\n7. Fluff rice.\n8. Serve with raita."},
    {"name": "Matar Paneer", "instructions": "1. Fry paneer cubes.\n2. Sauté onions and tomatoes.\n3. Add peas.\n4. Add spices.\n5. Add paneer.\n6. Cook till soft.\n7. Garnish with coriander.\n8. Serve with naan."},
    {"name": "Pea Soup", "instructions": "1. Boil peas.\n2. Blend to paste.\n3. Heat with stock.\n4. Add salt and pepper.\n5. Simmer 10 mins.\n6. Add cream.\n7. Reheat and stir.\n8. Serve warm."},
    {"name": "Pea Cutlets", "instructions": "1. Boil peas.\n2. Mash with potatoes.\n3. Add spices.\n4. Shape into cutlets.\n5. Coat in crumbs.\n6. Fry till golden.\n7. Drain oil.\n8. Serve with chutney."}
  ],

  "pineapple": [
    {"name": "Pineapple Juice", "instructions": "1. Peel and chop pineapple.\n2. Blend with water.\n3. Strain juice.\n4. Add sugar if needed.\n5. Chill before serving.\n6. Add ice cubes.\n7. Stir well.\n8. Serve cold."},
    {"name": "Pineapple Cake", "instructions": "1. Mix flour and sugar.\n2. Add pineapple puree.\n3. Mix into batter.\n4. Pour in pan.\n5. Bake at 350°F.\n6. Cool and frost.\n7. Add pineapple slices.\n8. Serve."},
    {"name": "Grilled Pineapple", "instructions": "1. Slice pineapple.\n2. Sprinkle brown sugar.\n3. Grill both sides.\n4. Add cinnamon.\n5. Serve warm.\n6. Add scoop of ice cream.\n7. Garnish with mint.\n8. Serve immediately."},
    {"name": "Pineapple Raita", "instructions": "1. Chop pineapple.\n2. Add to yogurt.\n3. Add cumin and salt.\n4. Mix well.\n5. Chill in fridge.\n6. Garnish with coriander.\n7. Stir before serving.\n8. Serve with rice."}
  ],

  "pomegranate": [
    {"name": "Pomegranate Juice", "instructions": "1. Peel pomegranate.\n2. Blend seeds.\n3. Strain juice.\n4. Add sugar if needed.\n5. Chill in fridge.\n6. Stir well.\n7. Pour into glass.\n8. Serve cold."},
    {"name": "Pomegranate Salad", "instructions": "1. Mix fruits.\n2. Add pomegranate.\n3. Add lemon juice.\n4. Sprinkle chaat masala.\n5. Toss well.\n6. Chill before serving.\n7. Add mint.\n8. Serve fresh."},
    {"name": "Pomegranate Yogurt Bowl", "instructions": "1. Add yogurt to bowl.\n2. Top with pomegranate.\n3. Add granola.\n4. Drizzle honey.\n5. Add seeds.\n6. Chill 10 mins.\n7. Stir and serve.\n8. Enjoy cold."},
    {"name": "Pomegranate Chutney", "instructions": "1. Blend pomegranate seeds.\n2. Add mint and chili.\n3. Add lemon juice.\n4. Blend to paste.\n5. Chill before use.\n6. Adjust salt.\n7. Garnish with seeds.\n8. Serve with snacks."}
  ],

  "red carrot": [
    {"name": "Carrot Halwa", "instructions": "1. Grate carrots.\n2. Boil in milk.\n3. Add sugar.\n4. Add ghee.\n5. Stir till thick.\n6. Add cardamom.\n7. Add nuts.\n8. Serve warm."},
    {"name": "Carrot Juice", "instructions": "1. Peel carrots.\n2. Chop and blend.\n3. Strain juice.\n4. Add lemon juice.\n5. Add sugar if needed.\n6. Stir well.\n7. Chill.\n8. Serve."},
    {"name": "Carrot Soup", "instructions": "1. Boil carrots with onion.\n2. Blend to paste.\n3. Cook in butter.\n4. Add stock.\n5. Add cream.\n6. Season and reheat.\n7. Serve with toast.\n8. Enjoy hot."},
    {"name": "Carrot Salad", "instructions": "1. Grate carrots.\n2. Add lemon juice.\n3. Add salt and pepper.\n4. Mix well.\n5. Add raisins.\n6. Chill for 30 mins.\n7. Garnish with herbs.\n8. Serve."}
  ],

  "rice": [
    {"name": "Plain Rice", "instructions": "1. Wash rice.\n2. Soak 30 mins.\n3. Boil water.\n4. Add rice.\n5. Cook till soft.\n6. Drain and steam.\n7. Fluff rice.\n8. Serve hot."},
    {"name": "Fried Rice", "instructions": "1. Cook and cool rice.\n2. Sauté garlic and veggies.\n3. Add soy sauce.\n4. Add rice.\n5. Stir fry.\n6. Add salt and pepper.\n7. Mix well.\n8. Serve hot."},
    {"name": "Lemon Rice", "instructions": "1. Cook rice.\n2. Heat oil.\n3. Add mustard seeds.\n4. Add curry leaves.\n5. Add rice.\n6. Add lemon juice.\n7. Stir well.\n8. Serve."},
    {"name": "Jeera Rice", "instructions": "1. Heat ghee.\n2. Add cumin seeds.\n3. Add soaked rice.\n4. Add water.\n5. Cook till done.\n6. Let rest.\n7. Fluff with fork.\n8. Serve with curry."}
  ],

  "spinach": [
    {"name": "Palak Paneer", "instructions": "1. Blanch spinach.\n2. Blend to paste.\n3. Fry paneer.\n4. Sauté onion and tomato.\n5. Add spinach.\n6. Add paneer.\n7. Simmer 5 mins.\n8. Serve with roti."},
    {"name": "Spinach Soup", "instructions": "1. Blanch spinach.\n2. Blend smooth.\n3. Sauté garlic.\n4. Add spinach paste.\n5. Add broth.\n6. Simmer 10 mins.\n7. Add cream.\n8. Serve hot."},
    {"name": "Spinach Paratha", "instructions": "1. Chop spinach.\n2. Add to flour.\n3. Add spices.\n4. Knead dough.\n5. Roll paratha.\n6. Cook on tawa.\n7. Apply ghee.\n8. Serve hot."},
    {"name": "Spinach Stir Fry", "instructions": "1. Wash spinach.\n2. Heat oil.\n3. Add garlic.\n4. Add spinach.\n5. Cook 5 mins.\n6. Add salt.\n7. Stir well.\n8. Serve as side dish."}
  ],

  "strawberry": [
    {"name": "Strawberry Shake", "instructions": "1. Wash strawberries.\n2. Blend with milk.\n3. Add sugar.\n4. Add ice.\n5. Blend again.\n6. Pour into glass.\n7. Garnish.\n8. Serve cold."},
    {"name": "Strawberry Ice Cream", "instructions": "1. Puree strawberries.\n2. Mix with cream.\n3. Add sugar.\n4. Freeze for 2 hrs.\n5. Stir and freeze again.\n6. Repeat.\n7. Scoop to serve.\n8. Garnish with mint."},
    {"name": "Strawberry Salad", "instructions": "1. Slice strawberries.\n2. Mix with greens.\n3. Add vinaigrette.\n4. Toss gently.\n5. Add feta cheese.\n6. Chill 15 mins.\n7. Serve fresh.\n8. Enjoy."},
    {"name": "Strawberry Jam", "instructions": "1. Chop berries.\n2. Add sugar.\n3. Cook till thick.\n4. Stir constantly.\n5. Cool slightly.\n6. Pour in jars.\n7. Cool completely.\n8. Store sealed."}
  ],

};

class IngredientListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ingredients = ingredientRecipes.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Select Ingredient', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green.shade200,
        elevation: 10,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green.shade50, Colors.white],
          ),

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.2,
            ),
            itemCount: ingredients.length,
            itemBuilder: (context, index) {
              final ingredient = ingredients[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => RecipeListtScreen(ingredient: ingredient),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(15),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.green.shade200, Colors.green.shade100],
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _getIngredientIcon(ingredient),
                            size: 50,
                            color: Colors.teal.shade800,
                          ),
                          SizedBox(height: 10),
                          Text(
                            ingredient.toUpperCase(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal.shade900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                     //     Text('${ingredientRecipes[ingredient]!.length} recipes', style: TextStyle(color: Colors.green.shade900,)),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  IconData _getIngredientIcon(String ingredient) {
    switch (ingredient.toLowerCase()) {
      case 'apple':
        return Icons.apple;
      case 'banana':
        return Icons.emoji_food_beverage_outlined;
      case 'beef':
        return Icons.set_meal;
      case 'bread':
        return Icons.bakery_dining;
      case 'chicken':
        return Icons.kebab_dining;
      case 'egg':
        return Icons.egg;
      case 'milk':
        return Icons.local_drink;
      case 'rice':
        return Icons.rice_bowl;
      case 'spinach':
        return Icons.eco;
      case 'strawberry':
        return Icons.cake;
      default:
        return Icons.fastfood;
    }
  }
}

class RecipeListtScreen extends StatelessWidget {
  final String ingredient;

  const RecipeListtScreen({required this.ingredient});

  @override
  Widget build(BuildContext context) {
    final recipes = ingredientRecipes[ingredient]!;

    return Scaffold(
      appBar: AppBar(
        title: Text('$ingredient Recipes', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green.shade200,
        elevation: 10,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green.shade50, Colors.white],
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            final recipe = recipes[index];
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  _showRecipeDetails(context, recipe);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.green.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.restaurant_menu,
                          size: 40,
                          color: Colors.green.shade800,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipe['name']!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade900,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Tap to view recipe',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.green.shade400,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showRecipeDetails(BuildContext context, Map<String, String> recipe) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    recipe['name']!,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instructions:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade800,
                      ),
                    ),
                    SizedBox(height: 10),
                    ...recipe['instructions']!
                        .split('\n')
                        .map((step) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Expanded(
                            child: Text(
                              step,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ))
                        .toList(),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Close',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
