````markdown
# 🚀 Lab Assignment 1

Welcome to **Lab 1**!  
Your task is simple: **implement the `MainProgram.cpp` file** so that the provided automated tests pass ✅.

All the other files are part of the testing & build system.  
⚠️ **Do not edit any other files** — your grade depends on this!

---

## 📂 Project Structure


.
├── Makefile               # Builds & runs tests (don't touch)
├── catch_amalgamated.hpp  # Catch2 testing library (don't touch)
├── catch_amalgamated.cpp  # Catch2 testing library (don't touch)
├── test_hello_world.cpp   # Automated tests (don't touch)
└── MainProgram.cpp        # ← ✍️ YOU WRITE THIS FILE


---

## 🧑‍💻 Your Task

Create a file named:

```text
MainProgram.cpp
```

It must contain a **valid C++ `main()` function**.

For this lab, your program should:

* Print **exactly**:

```text
Hello World!
```

* Return `0` from `main()`.

---

## 🧪 How It Will Be Tested

* The tests are written using [Catch2](https://github.com/catchorg/Catch2).
* The Makefile automatically compiles your code, **replacing `main` with `student_main`** during testing so the tests can run.
* Your output must match **exactly** (no extra spaces, no extra newlines).

---

## ⚠️ Rules & Grading

* ✅ **Only edit `MainProgram.cpp`.**
* ❌ **Do not modify**: `Makefile`, `test_hello_world.cpp`, or any `catch_*.cpp/.hpp` files.
* 🔍 Your submission will be automatically tested.
  Changing other files can result in **zero points**.



