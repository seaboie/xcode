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



