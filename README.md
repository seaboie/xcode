# Swift UI

# Fetch json data : Bundle()
## - Method load Json Data() from Bundle()

```swift
func loadJsonBundle<T: Decodable>(fileName: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle: \n \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self): \n \(error)")
    }
}
```

สร้าง Class conform to ObseravbleObject
```swift
final class ModelData: ObservableObject {
    
    @Published var landmarks: [Landmark] = loadJsonBundle(fileName: "landmarkData.json") 
}
```

---

# Compute Properties

## - Image

- ประกาศ Property image แล้ว return Image("name")

```swift
var image: Image {
   Image(imageName)
}
```
---

- เปลี่ยนชื่อ Image String 
```swift
var mainImage: String {
   name.replacingOccurrences(of: " ", with: "-").lowercased()
 }
    
 var thumbnailImage: String {
    "\(mainImage)-thumb"
}

```
--- 

- method Compute property
ทำการ บวกเพิ่มค่า 

```swift
var total: Int {
     if (items.count > 0) {
        return items.reduce(0, {$0 + $1.price})
    } else {
        return 0
    }
}
```

--- 

# Method 
- Add() and Remove() 


```swift

import Foundation

class Order: ObservableObject {
    
    @Published var items = [MenuItem]()
    
    var total: Int {
        if (items.count > 0) {
            return items.reduce(0, {$0 + $1.price})
        } else {
            return 0
        }
    }
    
    func add(item: MenuItem) {
        items.append(item)
    }
    
    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
    
}

``` 

--- 

# Trick 

- Set background color for Subview array() 

```json

"items": [
{
    "id": "EDCD038C-036F-4C40-826F-61C88CD84DDD",
    "name": "Maple French Toast",
    "photoCredit": "Joseph Gonzalez",
    "price": 6,
    "restrictions": ["G", "V", "N"],
    "description": "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…"
},
]

```

<img width="1194" alt="Screenshot 2566-06-18 at 20 52 13" src="https://github.com/seaboie/xcode/assets/96678854/5c8a853f-fc21-443b-83db-41c99da3fcc0">


--- 
# Logic  

---  

# Navigation 
- use : .navigationDestination() 
- เปลี่ยน ไปหน้า อื่น 

```swift
NavigationStack {
    List {
        ForEach(menus) { menu in
            Section(menu.name) {
                ForEach(menu.items) { item in
                    NavigationLink(value: item) { // 1. (value: _)
                        ItemRow(item: item)
                    }

                }
            }
        }
    }
    .navigationDestination(for: MenuItem.self, destination: { item in   // 2. ....
        ItemDetial(item: item)
    })
    .navigationTitle("Menu")
    .listStyle(.grouped)
}
 ```
--- 

# View 

## Form() & Picker() :
<img width="1197" alt="Screenshot 2566-06-18 at 20 27 18" src="https://github.com/seaboie/xcode/assets/96678854/f09c7c0a-0f96-46ed-b6a5-3627362993e7">

- Picker() : .inline, .wheel, .segmented, .menu

<img width="1196" alt="Screenshot 2566-06-18 at 21 28 58" src="https://github.com/seaboie/xcode/assets/96678854/bd6311d5-74a2-46de-aacd-7a4ef1827565">


--- 










