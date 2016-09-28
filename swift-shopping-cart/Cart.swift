//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items = [Item]()
    
    func totalPriceInCents()->Int{
        var totalCost = 0
        for item in items{
            totalCost = totalCost + item.priceInCents
        }
        return totalCost
    }
    
    func add(item: Item){
        items.append(item)
    }
    
    func remove(item: Item){
        for (index, itemValue) in items.enumerated(){
            if itemValue.name == item.name{
               items.remove(at: index)
            }}
        }
    
    func items(withName name: String)->[Item]{
        var itemReturn: [Item] = []
        for itemsValue in items{
            if itemsValue.name == name{
               itemReturn.append(itemsValue)
            }
        }
        return itemReturn
    }
    
    func items(withMinPrice price: Int)->[Item]{
        var itemReturn = [Item]()
        for itemValue in items{
            if itemValue.priceInCents >= price{
                itemReturn.append(itemValue)
            }
        }
        return itemReturn
    }
    
    
    func items(withMaxPrice price: Int)->[Item]{
        var itemReturn = [Item]()
        for itemValue in items{
            if itemValue.priceInCents <= price{
                itemReturn.append(itemValue)
            }
        }
        return itemReturn
    }
}
