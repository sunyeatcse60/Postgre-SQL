### ১.PostgreSQL কী?

**PostgreSQL** হলো একটি শক্তিশালী, ওপেন-সোর্স রিলেশনাল ডেটাবেজ ম্যানেজমেন্ট সিস্টেম (RDBMS)। এটি SQL এর উপর ভিত্তি করে তৈরি এবং ACID properties (Atomicity, Consistency, Isolation, Durability) মেনে চলে। PostgreSQL ডেটার নির্ভরযোগ্যতা, নিরাপত্তা ও performance বজায় রেখে বড় আকারের অ্যাপ্লিকেশন ও সিস্টেমে ব্যবহৃত হয়।


### ২.Primary Key এবং Foreign Key এর ধারণা (PostgreSQL এ)

- **Primary Key:** একটি টেবিলের এমন একটি কলাম (বা কলামগুলোর সমন্বয়) যা প্রতিটি রেকর্ডকে ইউনিকভাবে চিনে। এটি `NULL` হতে পারে না এবং ডুপ্লিকেট ভ্যালু রাখা যায় না।

  ```sql
  CREATE TABLE students (
      student_id SERIAL PRIMARY KEY,
      name VARCHAR(100)
  );
  ```

- **Foreign Key:** এটি একটি টেবিলের কলাম যা অন্য একটি টেবিলের `Primary Key`-এর সাথে সম্পর্ক তৈরি করে।

  ```sql
  CREATE TABLE courses (
      course_id SERIAL PRIMARY KEY,
      student_id INT REFERENCES students(student_id)
  );
  ```


### ৩.VARCHAR এবং CHAR ডেটা টাইপের পার্থক্য

| বৈশিষ্ট্য     | VARCHAR                     | CHAR                         |
|----------------|-----------------------------|-------------------------------|
| দৈর্ঘ্য         | ভ্যারিয়েবল (চেঞ্জ হয়)        | ফিক্সড (স্থির) দৈর্ঘ্য         |
| স্টোরেজ        | ইনপুট অনুযায়ী                | সবসময় নির্দিষ্ট স্পেস নেয়      |
| পারফরম্যান্স   | ছোট ইনপুটে ভালো             | কিছুটা দ্রুত হতে পারে          |
| ব্যবহার         | ডাইনামিক টেক্সটের জন্য       | নির্দিষ্ট দৈর্ঘ্যের ফিল্ডে উপযুক্ত |

```sql
name VARCHAR(50)
code CHAR(10)
```


### ৪.SELECT স্টেটমেন্টে WHERE ক্লজ

`WHERE` ক্লজ ব্যবহার করে ডেটাবেজ থেকে নির্দিষ্ট শর্ত অনুযায়ী ডেটা ফিল্টার করা হয়।

```sql
SELECT * FROM students
WHERE age > 18;
```

এখানে ১৮ বছরের উপরের ছাত্রদের তথ্য রিটার্ন করবে।


### ৫.LIMIT এবং OFFSET কী কাজে লাগে?

- **LIMIT:** কয়টি রেকর্ড রিটার্ন করবে তা নির্ধারণ করে।
- **OFFSET:** কতটি রেকর্ড স্কিপ করবে তা নির্ধারণ করে।

```sql
SELECT * FROM students
LIMIT 5 OFFSET 10;
```

উপরের কোডে প্রথম ১০টি বাদ দিয়ে পরবর্তী ৫টি রেকর্ড রিটার্ন হবে।
