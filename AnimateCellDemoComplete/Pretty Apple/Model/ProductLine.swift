//
//  ProductLine.swift
//  TableViewDemo
//
//  Created by Duc Tran on 3/22/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//
//  Here we have several Apple product lines:
//  (1) iDevices: Apple Watch, iPad, iPhone, iOS
//  (2) Mac: MacBook, MacBook Pro with Retina Display, MacBook Air, iMac
//           Mac Pro, MacBook Pro, Mac Mini, Display, Airport Extreme,
//           AirPort Time Capsule, AirPort Express, Magic Trackpad
//           Magic Mouse, Apple Keyboard, Apple Battery Charger
//  (3) Software: OS X, iLife, iWork, Logic Pro X, Final Cut Pro X, Aperture
//  (4) iPod: Apple TV, iPod nano, iPod shuffle, iPod touch, iTunes
//  (5) Services: iCloud, Apple Pay

import Foundation

class ProductLine
{
    // Variables
    var name: String            // name of the product line
    var products: [Product]     // all products in the line
    
    class var numberOfProducts: Int {
        get {
            return (ProductLine.iGroceries().products.count + ProductLine.boozeAndFood().products.count + ProductLine.malls().products.count + ProductLine.otherStuff().products.count + ProductLine.courier().products.count)
        }
    }
    
    init(named: String, includeProducts: [Product])
    {
        name = named
        products = includeProducts
    }
    
    class func productLines() -> [ProductLine]
    {
        return [self.iGroceries(), self.boozeAndFood(), self.malls(), self.otherStuff(), self.courier()]
    }
    
    // Private methods
    
    fileprivate class func iGroceries() -> ProductLine {
        //  (1) iGroceries: Raplhs, Trader, WholeFoods, Sprouts
        var products = [Product]()
        
        products.append(Product(titled: "Shop At Ralphs", description: "Shop your neighborhood Ralphs in just a few clicks. You do the shopping on your phone, we pick it up and deliver it in minutes!", imageName: "ralphs.png"))
        products.append(Product(titled: "Shop At Trader Joes", description: "Shop at your local Trader Joe's in a blink of an eye. Forget the long lines and impatient customers and let us do that part. We'll contact you in case the organics fruits you wanted aren't available.", imageName: "traderjoes.png"))
        products.append(Product(titled: "Shop At Whole Foods", description: "Shop at this rare, but popular grocery chain. Let us do the shopping while you relax and enjoy the rest of the day!", imageName: "wholefoods.png"))
        products.append(Product(titled: "CVS", description: "Shop your local CVS in as little as 4 clicks. CVS has all the personal and household products you could ask for!", imageName: "cvs.png"))
        
        return ProductLine(named: "Groceries", includeProducts: products)
    }
    
    
    fileprivate class func boozeAndFood() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "BevMo", description: "Shop alcohol at your local BevMo in a few clicks. Select from your favorite beer, wine and spirits!", imageName: "Bev.png"))
        products.append(Product(titled: "Total Wine", description: "Shop at one of the few Total Wine stores in Los Angeles. Select from the finest wines, imported beer, liquors and frozen drinks.", imageName: "totalWines.jpg"))
        products.append(Product(titled: "Trader Joes Alcohol", description: "Shop at your local Trader Joe's for an exclusive selection of imported and domestic beer and wine from local vineyards!", imageName: "traderJoes.jpg"))
        products.append(Product(titled: "Jersey Mikes", description: "Shop your local Jersey Mikes for the best tasting subs in town! Place your order with us and we'll pick it up for you!", imageName: "JerseyMikes.png"))
        products.append(Product(titled: "Chipotle", description: "Order to go from your local Chipotle! We'll make sure your order is complete including those yummy chips!", imageName: "chipotle.png"))
        products.append(Product(titled: "Johnie's Pizza", description: "Order your pizza from this pizza chain restaurant that bakes the best NY-style pizzas in the west!", imageName: "pizza.png"))
        products.append(Product(titled: "Farmer's Market", description: "Shop at your local Farmer's Market and don't even step one foot outside your door. Select your produce or hot food and we'll deliver it in minutes.", imageName: "farmers.jpg"))
        products.append(Product(titled: "Dry Cleaning Services", description: "Send us a picture of your Dry Cleaner ticket, and we'll pick it up and deliver it to a safe place for you. Don't stress in traffic and let us fly by the grid-locked jams to get your stuff.", imageName: "drycleaner.jpg"))
        products.append(Product(titled: "Medical Greens", description: "Shop your local dispensary and get your medical goods! We'll verify your information while you shop, just take a picture of the rec card.", imageName: "greens.png"))
        
        return ProductLine(named: "Booze and Food", includeProducts: products)
    }
    
    //  (3) malls: the grove, beverly center, century city mall
    
    fileprivate class func malls() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "The Grove", description: "Shop at this cool and trendy shopping mall right in the heart of Hollywood!. Shop Barnes and Noble, Apple, Nike and many other retail shops!", imageName: "grove2.jpg"))
        products.append(Product(titled: "Beverly Center", description: "Shop at this historic mall in West Hollywood along one of the most celebrity friendly areas.", imageName: "BeverlyCenter.png"))
        products.append(Product(titled: "Century City Mall", description: "Founds along the avenue of the stars, this shopping mall located adjacent to Beverly Hills is one of the state of the art shopping centers in Los Angeles. ", imageName: "centurycity.png"))
        
        return ProductLine(named: "Malls", includeProducts: products)
    }
    
    //  (4) otherStuff: herbDeliv, WaitingServices, rides
    
    fileprivate class func otherStuff() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "Medicinal Deliveries", description: "Shop your local dispensary in just a few clicks. Using our app, take a picture of the doctor's recommendation card and we'll verity if while you shop and take a look at the menu specials!", imageName: "herbDeliv.png"))
        products.append(Product(titled: "Waiting Services", description: "Because you're too busy to wait in line.", imageName: "waitingServ.jpg"))
        products.append(Product(titled: "iPod touch", description: "Featuring a brilliant 4-inch Retina display; a 5-megapixel iSight camera with 1080p HD video recording.", imageName: "ipod-touch.png"))
        products.append(Product(titled: "iTunes", description: "A free application for your Mac or PC, iTunes organizes and plays your digital music and video on your computer.", imageName: "itunes.png"))
        products.append(Product(titled: "Apple TV", description: "Access to tons of great HD content in a tiny package. Enjoy blockbuster movies, TV shows, live sports and news, your music, photos, and more — right on your high-definition TV.", imageName: "apple-tv.png"))
        
        return ProductLine(named: "Other Stuff", includeProducts: products)
    }
    
    //  (5) courierServices: legal documents, packages, boxes
    
    fileprivate class func courier() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(titled: "Business to Business", description: "Use eRun to deliver all your business to business documents and packages. Our electric bikes can carry a load of up to 400 lbs.", imageName: "Packages.png"))
        products.append(Product(titled: "Apple Pay", description: "A breakthrough set of free new cloud services that work seamlessly with applications on your iPhone®, iPad®, iPod touch®, Mac® or PC to automatically and wirelessly store your content in iCloud and automatically and wirelessly push it to all your devices. ", imageName: "apple-pay.png"))
        
        return ProductLine(named: "Courier Services", includeProducts: products)
    }
}













