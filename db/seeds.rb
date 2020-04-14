# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

justin = User.create(username: "jayman1294", password: "password")
computer1 = Computer.create(operating_system: "Windows 10", 
    cpu: "intel i7", ram: "16", gpu: "nvidia", 
    motherboard_type: "ATX", cooling_type: "Liquid", 
    case_size: "Full Tower", user: justin)
computer2 = Computer.create(operating_system: "Windows 8", 
        cpu: "intel i5", ram: "16", gpu: "AMD", 
        motherboard_type: "ATX-mini", cooling_type: "Fan", 
        case_size: "Full Tower", user: justin)   
order1 =  Order.create(order_date: DateTime.new(2020, 03, 15, 18, 00, 0), shipping_type: "Express", shipping_address: "2100 1st Ave", user: justin, computer: computer1)
order2 =  Order.create(order_date: DateTime.new(2020, 03, 15, 18, 00, 0), shipping_type: "Standard", shipping_address: "2100 1st Ave", user: justin, computer: computer2)