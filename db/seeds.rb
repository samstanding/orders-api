# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

orders = Order.create(
    [
        {
            pickup: 'Fourth Baptist Church, Forestview Lane North, Plymouth, MN, USA',
            delivery: 'MCAD, Stevens Avenue, Minneapolis, MN, USA',
            when: 'ASAP',
            vehicle: 'mid sized',
            price: '22.00'
        },
        {
            pickup: '8th Street Market, Southeast 8th Street, Minneapolis, MN, USA',
            delivery: 'Bush Lake Road, Bloomington, MN, USA',
            when: 'ASAP',
            vehicle: 'cargo van',
            price: '41.48'
        }
    ]
)