customer(101, shahd_ghazal2002).
customer(102, abu_juliaa).
customer(103, abomoaaz23).
customer(104, mazen122).
customer(105, anasjamal44).
customer(106, saleh_aljafarawi).
customer(107, noureldeen24).
customer(108, ahmedhijazee).
customer(109, aisha11).

order(101,1,[puvana, orange_1k, feba_dishwash_1L, snickers, ahlawy]).
order(101,2,[loreal_hair_serum_100ml, sunsilk_shampoo_350ml]).
order(102,1,[neslte_yogurt, snickers, dasani, flour_1k]).
order(102,2,[ariel_4k, biskrem, galaxy, cheese]).
order(102,3,[duru_soap_x4, dasani, nedo_288g, pril_1L]).
order(103,1,[eggs_30, rice_1k, chicken_1k]).
order(103,2,[rice_1k, meat_1k, sugar_1k, strawberry_1k]).
order(104,1,[cocacola, lux_soap_x4]).
order(104,2,[pringles_40g]).
order(105,1,[flour_1k, flour_1k, flour_1k, flour_1k, flour_1k, flour_1k, flour_1k]).
order(105,2,[sugar_1k, sugar_1k, chicken_1k, chicken_1k, rice_1k, rice_1k, rice_1k]).
order(106,1,[strawberry_1k, rice_1k, chicken_1k]).
order(106,2,[elarosa_tea, sugar_1k]).
order(107,1,[doritos, chipsy, danone_yogurt_with_strawberry, schweppes]).
order(107,2,[cadbury_dairy_milk, nescafe_200g]).
order(108,1,[juhayna_juice, flour_1k, chicken_1k, meat_1k]).
order(108,2,[sugar_1k, strawberry_1k, strawberry_1k]).
order(109,1,[pampers_size1_60p, johnsons_baby_shampoo_200ml, topvalue_laundry_detergent_4k, downy_1L, dove_shampoo_350ml]).

item(ariel_4k, 'Procter and Gamble', 285).
item(tide_4k, 'Procter and Gamble', 225).
item(persil_4k, 'Henkel', 200).
item(pril_1L, 'Henkel', 34.25).
item(downy_1L, 'Procter and Gamble', 86).
item(topvalue_laundry_detergent_4k, 'TopValue', 200).
item(feba_dishwash_1L, 'Feba', 31).
item(frida_dishwash_1L, 'Frida', 32).
item(frida_fabric_freshener_2L, 'Frida', 78).
item(sunsilk_shampoo_350ml, 'Unilever', 69).
item(dove_shampoo_350ml, 'Unilever', 78).
item(lux_soap_x4, 'Unilever', 74).
item(duru_soap_x4, 'Duru', 40).
item(kamena_shampoo_350ml, 'Kamena', 50).
item(pampers_size1_60p, 'Procter and Gamble', 257.5).
item(loreal_hair_serum_100ml, 'LOreal', 250).
item(johnsons_baby_shampoo_200ml, 'Johnson & Johnson', 65).
item(molfix_diapers_size1_60p, 'Molfix', 267).
item(nunu_baby_shampoo_200ml, 'Nunu', 65).
item(galaxy, 'Mars', 23.5).
item(mars, 'Mars', 21).
item(snickers, 'Mars', 23.5).
item(kitkat, 'Nestle', 12).
item(cadbury_dairy_milk, 'Mondelez International', 22.25).
item(corona_chocolate, 'Corona', 15).
item(katakito, 'Katakito', 12).
item(cheetos, 'PepsiCo', 5).
item(chipsy, 'PepsiCo', 7).
item(sunbites, 'PepsiCo', 7).
item(doritos, 'PepsiCo', 5).
item(pringles_40g, 'Procter and Gamble', 39).
item(ahlawy, 'American', 5).
item(tiger, 'Tiger', 5).
item(bigchips, 'Big Chips', 5).
item(spuds, 'SPUDS', 6).
item(tatess, 'TATESS', 5).
item(pravo, 'Bravo', 5).
item(flaminco, 'Flaminco', 5).
item(pepsi, 'PepsiCo', 8.5).
item('7up', 'PepsiCo', 8.5).
item(cocacola, 'The Coca-Cola Company', 7).
item(schweppes, 'The Coca-Cola Company', 10).
item(juhayna_juice, 'Juhayna', 10).
item(dina_farms_flavored_milk, 'Dina Farms', 16.25).
item(nescafe_200g, 'Nestle', 162).
item(nesquik_330g, 'Nestle', 70).
item(nedo_288g, 'Nestle', 124.75).
item(lipton, 'PepsiCo', 80).
item(topvalue_coffee_200g, 'TopValue', 195).
item(topvalue_powder_milk_250g, 'TopValue', 91.25).
item(elarosa_tea, 'Egypt', 91.25).
item(danone_yogurt_with_strawberry, 'Danone', 7.5).
item(neslte_yogurt, 'Nestle', 7).
item(neslte_icecream, 'Nestle', 10).
item(juhayna_yogurt_with_strawberry, 'Juhayna', 9.5).
item(juhayna_yogurt, 'Juhayna', 7).
item(dasani, 'The Coca-Cola Company', 4).
item(neslte, 'Nestle', 4).
item(aquafina, 'PepsiCo', 4).
item(puvana, 'Puvana', 4).
item(siwa, 'Siwa', 4).
item(safi, 'Safi', 4).
item(bimbo, 'Bimbo', 5).
item(biskrem, 'Biskrem', 5).
item(chicken_1k, 'Egypt', 120).
item(meat_1k, 'Egypt', 350).
item(eggs_30, 'Egypt', 170).
item(orange_1k, 'Egypt', 15).
item(cheese, 'Egypt', 50).
item(strawberry_1k, 'Egypt', 28).
item(flour_1k, 'Egypt', 30).
item(rice_1k, 'Egypt', 30).
item(sugar_1k, 'Egypt', 27).

alternative(ariel_4k, topvalue_laundry_detergent_4k).
alternative(tide_4k, topvalue_laundry_detergent_4k).
alternative(persil_4k, topvalue_laundry_detergent_4k).
alternative(downy_1L, frida_fabric_freshener_2L).
alternative(pril_1L, feba_dishwash_1L).
alternative(pril_1L, frida_dishwash_1L).
alternative(sunsilk_shampoo_350ml, kamena_shampoo_350ml).
alternative(dove_shampoo_350ml, kamena_shampoo_350ml).
alternative(lux_soap_x4, duru_soap_x4).
alternative(pampers_size1_60p, molfix_diapers_size1_60p).
alternative(johnsons_baby_shampoo_200ml, nunu_baby_shampoo_200ml).
alternative(mars, corona_chocolate).
alternative(galaxy, corona_chocolate).
alternative(kitkat, katakito).
alternative(cadbury_dairy_milk, corona_chocolate).
alternative(snickers, corona_chocolate).
alternative(chipsy, tiger).
alternative(chipsy, bigchips).
alternative(chipsy, spuds).
alternative(chipsy, tatess).
alternative(chipsy, pravo).
alternative(ahlawy, spuds).
alternative(ahlawy, tatess).
alternative(ahlawy, pravo).
alternative(cheetos, flaminco).
alternative(sunbites, flaminco).
alternative(pepsi, juhayna_juice).
alternative('7up', juhayna_juice).
alternative(cocacola, juhayna_juice).
alternative(schweppes, dina_farms_flavored_milk).
alternative(nescafe_200g, topvalue_coffee_200g).
alternative(nedo_288g, topvalue_powder_milk_250g).
alternative(lipton, elarosa_tea).
alternative(danone_yogurt_with_strawberry, juhayna_yogurt_with_strawberry).
alternative(neslte_yogurt, juhayna_yogurt).
alternative(dasani, puvana).
alternative(dasani, siwa).
alternative(dasani, safi).
alternative(neslte, puvana).
alternative(neslte, siwa).
alternative(neslte, safi).
alternative(aquafina, puvana).
alternative(aquafina, siwa).
alternative(aquafina, safi).

boycott_company('The Coca-Cola Company', 'Coca-Cola israel: owns farms in the illegal israeli settlements of Shadmot Mechola in the Jordan Valley and a plant in the industrial zone of Katzerin in the occupied Golan Heights').
boycott_company('PepsiCo', 'PepsiCo purchased the israeli company SodaStream in August 2018. SodaStream has long been a BDS target due to their operation of factories on stolen land and their racial discrimination against Palestinian workers. Pepsi also owns 50% of Sabra, with the other 50% being owned by israeli food company Strauss').
boycott_company('Nestle', 'Nestle is 100% owned by swiss. Nestle began investing in israel in 1995 by buying 10% of israeli food maker Osem Investments, increasing its ownership to 50.1% two years later giving it the controlling share and now owns a 53.8 percent stake in Osem Swiss food giant Nestle will set up a global research and development center for snack foods in Sderot, a town in israel Negev desert, the Maariv newspaper reported on Sunday.').
boycott_company('Danone', 'Danone leads an investment of about NIS 12.5 million in israel Wilk, alongside israeli milk firm Tara.').
boycott_company('Johnson & Johnson', 'Johnson & Johnson owns companies in israel, engaging in various sectors including healthcare, pharmaceuticals, and medical devices, furthering its global presence in these critical industries.').
boycott_company('LOreal', '34.70% of LOreal is owned by Mrs. Francoise Bettencourt Meyers and her family. 20.1% of LOreal is owned by Nestle.').
boycott_company('Adidas', 'Adidas Underwear has partnered with Delta Galil Industries, Ltd. (DELT/Tel Aviv Stock Exchange), the global manufacturer and marketer of branded and private label apparel products for men, women, and children. Delta Galil Industries is an israeli textile firm headquartered in Tel Aviv, with plants around the world.').
boycott_company('Unilever', 'operations in israel').
boycott_company('Procter and Gamble', 'Procter and Gamble opened an R&D center in Tel Aviv, Occupied Palestine, in which it invests $2bn annually.').
boycott_company('Henkel', 'Henkel invests in israeli technology namely by investing in Feelit. A company with its roots in israel.').
boycott_company('Americana', 'Americana Group sold in 2016 to businessman Mohamed Al Abbar, He is recognized for his strong ties with israel, as well as his donations and support').
boycott_company('Mondelez International', 'Mondelez International Inc.  on Nov. 10(2020) announced a seed investment in Torr FoodTech, an early stage company based in israel that has developed proprietary technology Mondelez said brings real, simple ingredients together to offer multi-textural, sensorial experiences.').
boycott_company('Mars', 'Mars will support israeli start-ups and the formation of companies, and will work together with leading israeli academic institutions, such as the Hebrew University, the Weizmann Institute, the Technion, Migall and Tel Hai College, among others, to further Foodtech innovations.').
