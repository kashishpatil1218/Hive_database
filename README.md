---
## 📚 Hive Database - Question & Answer Set

---

### 🔹 1. **What is Hive in Flutter?**

**Answer:**
Hive is a fast and lightweight key-value NoSQL database written in pure Dart. It allows storing and retrieving data locally in Flutter applications without relying on platform channels.

---

### 🔹 2. **What are the key features of Hive?**

**Answer:**

* Written in pure Dart
* High performance (fast read/write)
* No native dependencies
* Supports custom objects with TypeAdapters
* Built-in encryption support
* Works on mobile, web, and desktop

---

### 🔹 3. **What is a Box in Hive?**

**Answer:**
A **Box** in Hive is like a table or container. It stores key-value pairs and can hold any type of data, including primitives and custom objects.

---

### 🔹 4. **How do you initialize Hive in Flutter?**

**Answer:**

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  runApp(MyApp());
}
```

---

### 🔹 5. **How do you store and retrieve data in Hive?**

**Answer:**

```dart
var box = Hive.box('myBox');
box.put('name', 'Kashish');           // Store
String? name = box.get('name');       // Retrieve
box.delete('name');                   // Delete
```

---

### 🔹 6. **How can Hive store custom objects?**

**Answer:**
To store custom objects:

1. Annotate the class with `@HiveType` and fields with `@HiveField`.
2. Generate the adapter using `build_runner`.
3. Register the adapter and open the box.

---

### 🔹 7. **What is a TypeAdapter in Hive?**

**Answer:**
A **TypeAdapter** tells Hive how to serialize and deserialize custom objects so they can be stored as binary data in boxes.

---

### 🔹 8. **What command generates Hive TypeAdapters?**

**Answer:**

```bash
flutter pub run build_runner build
```

---

### 🔹 9. **What is HiveObject and why use it?**

**Answer:**
`HiveObject` is a base class that gives Hive-aware objects useful methods like `.save()`, `.delete()` and access to their key. Useful when working with custom objects.

---

### 🔹 10. **Can Hive work without the internet?**

**Answer:**
Yes, Hive is a local database and works completely offline.

---

### 🔹 11. **Does Hive support Flutter Web?**

**Answer:**
Yes, Hive supports Flutter Web out-of-the-box using IndexedDB.

---

### 🔹 12. **How to update data in Hive?**

**Answer:**

* For simple data:

```dart
box.put('key', 'newValue');
```

* For custom objects:

```dart
object.field = newValue;
object.save();
```

---

### 🔹 13. **How to delete data in Hive?**

**Answer:**

```dart
box.delete('key');         // by key
object.delete();           // for HiveObject
```

---

### 🔹 14. **Can I use multiple boxes in Hive?**

**Answer:**
Yes, you can create and manage as many boxes as you need (like multiple tables).

---

### 🔹 15. **How to check if a key exists in a box?**

**Answer:**

```dart
bool exists = box.containsKey('key');
```

---

### 🔹 16. **How to clear all data in a box?**

**Answer:**

```dart
await box.clear();
```

---

### 🔹 17. **How to get all keys and values from a box?**

**Answer:**

```dart
List keys = box.keys.toList();
List values = box.values.toList();
```

---

### 🔹 18. **Is Hive secure?**

**Answer:**
Hive supports AES encryption. You can use an encryption key to encrypt your box:

```dart
final encryptedBox = await Hive.openBox(
  'secureBox',
  encryptionCipher: HiveAesCipher(encryptionKey),
);
```

---

### 🔹 19. **How do you listen for changes in Hive data?**

**Answer:**
Use `ValueListenableBuilder`:

```dart
ValueListenableBuilder(
  valueListenable: box.listenable(),
  builder: (context, Box box, _) {
    return Text(box.get('key'));
  },
);
```

---

### 🔹 20. **Can Hive be used instead of SQLite?**

**Answer:**
Yes, for small to medium apps without complex relationships, Hive is often easier and faster than SQLite. But for complex relational data, SQLite (via Drift, etc.) is better.

---

