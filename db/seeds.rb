# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

advice = Advice.create(measured: "Carbon Monoxide", control: "good", your_home: "1.1 ppm", acceptable_range: 'Less than 6.0 ppm', description: "You don't want carbon monoxide in your home. It's presence at levels above 6 ppm means there is a safety issue. Carbon monoxide (CO) is known as the 'silent killer' and is a colorless, odorless, tasteless, nonirritating, poisonous gas produced by burning fuels.When levels are above 25 ppm, immediate action should be taken. CO can be found in low levels about 0.2 ppm in the atmosphere.")
advice.potential_causes.create(point: 'Cracked heat exchanger on furnace, leaking vent or chimney.')
advice.potential_causes.create(point: 'Inadequate or aging venting of combustion appliances (water heater, gas stove or dryer).')
advice.potential_causes.create(point: 'Inadequate or aging venting of combustion appliances (water heater, gas stove or dryer).')
advice.potential_causes.create(point: 'Cigarette smoke in the home.')


advice = Advice.create(measured: "Odors & Smells", control: "good", your_home: "79.0 μg/m3", acceptable_range: 'Less than 500 μg/m3', description: "No doubt about it, every house smells. Some smells are good and some not so good, but everyone notices smells differently. Odors and smells come from the things we bring in to the home, as well as human generated activities. Like many things, prolonged exposure to the chemicals that make up these noticeable odors and smells can impact your comfort and health. Sometimes even the good smelling products we use to cover up bad smells can become a source of irritation. Measured levels above 500 μg/m3 indicates there is a potential control issue with removing odors and smells in your home.")
advice.potential_causes.create(point: 'Air fresheners, fragrances, cleaning chemicals, candles, personal care products, etc.')
advice.potential_causes.create(point: 'Activities such as cooking, smoking, and pets.')
advice.potential_causes.create(point: 'Newly installed building materials, carpeting, freshly painted surfaces, plastics or furniture.')

advice = Advice.create(measured: "Relative Humidity", control: "good", your_home: "42.0%", acceptable_range: "35% - 55%", description: "The way you feel the air around you has a lot to do with the amount of water in the air. Too little moisture and you feel dry and too much moisture and you feel sticky. Your home feels the moisture in the air too. Too little can cause structural damage and too much can lead to mold growth. Weather and temperature determine how much water is in the air. According to ASHRAE (American Society of Heating, Refrigeration, and Air Conditioning Engineers) your home needs to be able to control relative humidity
between the range of 35% to 55%.")
advice.potential_causes.create(point: "Weather and seasonal issues: seasonal changes often bring big swings in relative humidity and indicates your home isn't keeping up adequately.")
advice.potential_causes.create(point: "Possible heating and cooling issues: no or inadequate humidification or dehumidification, poor ventilation, improperly sized heating or cooling system.")
advice.potential_causes.create(point: 'Structural issues: standing water, leaky pipes or faucets.')

advice = Advice.create(measured: "Particles", control: "good", your_home: "8.8 μg/m3", acceptable_range: "Less than 10 μg/m3", description: "While we often can't see them, the outside air carries with it many small particles that change daily and with the seasons. When outside air gets in, your home acts as a giant filter and traps these particles in your home. Measured levels above 10 μg/m3 indicates there is a potential control issue with removing particles from the air in your home. Excessive airborne particles can shorten the life of furnace igniters, burners, and the fan motor. At elevated levels above the control point, these particles can become noticeable to you and your guests.")
advice.potential_causes.create(point: 'Outside elements such as dirt, dust, pollen, pollution, and soot')
advice.potential_causes.create(point: 'Inside elements such as human and pet dander, fireplace ash and soot, smoke particle from burning cigarettes or candles.')
advice.potential_causes.create(point: 'Leaks in heating and cooling ductwork.')

advice = Advice.create(measured: "Carbon Dioxide", control: "marginal", your_home: "956 ppm", acceptable_range: "Less than 750 ppm", description: "Just like you, your house has to breathe. Humans breathe in oxygen (O2) and exhale carbon dioxide (CO2). With human activity, your house needs to have adequate ventilation to remove CO2 and when it can't, levels rise. CO2 above 750 ppm indicate that ventilation is a control concern in the home. CO2 is naturally present in the atmosphere at about 400 ppm. Lack of fresh air (no ventilation), malfunctioning ventilation, ventilation has been blocked or turned off.")
advice.potential_causes.create(point: 'Lack of fresh air (no ventilation), malfunctioning ventilation, ventilation has been blocked or turned off.')
advice.potential_causes.create(point: "'Tight' (well weatherized and energy-efficient) home construction without adequate ventilation.")
advice.potential_causes.create(point: 'Common human & household activity: breathing, burning candles, natural gas or wood burning fireplace.')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?