# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

justin = User.create(username: "jayman1294", password: "password", email: "jayman1294@gmail.com")
milly  = User.create(username: "milly", password: "password2", email: "milly@gmail.com")

order1 =  Order.create(shipping_type: "Express", shipping_address: "2100 1st Ave", card_type: "Visa", card_number: "112344567767", user: justin)
order2 =  Order.create(shipping_type: "Standard", shipping_address: "2100 1st Ave", card_type: "Mastercard", card_number: "537584375834", user: justin)
order3 =  Order.create(shipping_type: "Express", shipping_address: "2200 2nd Ave", card_type: "Visa", card_number: "93249384923", user: milly)


computer1 = Computer.create(operating_system: "Windows 10", 
    cpu: "intel i7", ram: "16", gpu: "nvidia", 
    motherboard_type: "ATX", cooling_type: "Liquid", 
    case_size: "Full Tower", user: justin, order: order1)

computer2 = Computer.create(operating_system: "Windows 8", 
        cpu: "intel i5", ram: "16", gpu: "AMD", 
        motherboard_type: "ATX-mini", cooling_type: "Fan", 
        case_size: "Full Tower", user: justin, order: order2) 
computer3 = Computer.create(operating_system: "Windows 7", 
            cpu: "intel i3", ram: "8", gpu: "AMD", 
            motherboard_type: "ATX-mini", cooling_type: "liquid", 
            case_size: "Mini-Tower", user: milly, order: order3)    
computer4 = Computer.create(operating_system: "Windows 11", 
                cpu: "intel i9", ram: "32", gpu: "nvidia 1090", 
                motherboard_type: "ATX", cooling_type: "Liquid", 
                case_size: "Full Tower", user: justin, order: order1)

