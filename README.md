[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Build status](https://ci.appveyor.com/api/projects/status/io1x70fd52l04wad?svg=true)](https://ci.appveyor.com/project/andrew-gresyk/FFSM2)
[![Build Status](https://travis-ci.org/andrew-gresyk/FFSM2.svg?branch=master)](https://travis-ci.org/andrew-gresyk/FFSM2)
[![Gitter](https://badges.gitter.im/andrew-gresyk/FFSM2.svg)](https://gitter.im/andrew-gresyk/FFSM2)

# FFSM2: High-Performance Flat Finite State Machine Framework

Header-only flat FSM framework in C++11, with fully statically-defined structure (no dynamic allocations), built with variadic templates.

## Compiler Support

- Visual Studio 14, 15, 16
- GCC 5, 6, 7, 8, 9
- Clang 3.7, 3.8, 3.9, 4, 5, 6, 7, 8, 9, 10

---

## See Also

- [HFSM2: High-Performance Hierarchical Finite State Machine Framework](https://hfsm.dev)

---

## Feature Highlights

- Permissive [MIT License](https://github.com/andrew-gresyk/HFSM2/blob/master/LICENSE)
- Written in widely-supported modern(ish) C++11
- Header-only
- Convenient, minimal boilerplate
- Fully static, no dynamic allocations
- Uses inline-friendly compile-time pylymorphism, no virtual methods are used
- Type-safe transitions: `FSM.changeTo<TargetState>()` with optional payloads
- Scaleable, supports robust state re-use via state injections
- Gamedev-friendly, supports explicit `State::update()`
- Also supports traditional event-based workflow with `State::react()`
- Inspect anything: previous and current transitions, state activation status, and more!
- Game AI-friendly with [Dynamic planning](https://github.com/andrew-gresyk/HFSM2/wiki/Plans) support
- Built-in logging support

---

## 3rd Party Libraries

- [Catch2](https://github.com/catchorg/Catch2) unit testing framework

---

## Get Updates

- [Blog](https://gresyk.dev)
- [Twitter](https://www.twitter.com/andrew_gresyk)

---

## Get In Touch

- [Gitter](https://gitter.im/andrew-gresyk/FFSM2)
- [Twitter](https://www.twitter.com/andrew_gresyk)
