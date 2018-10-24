# threadily-sample

Sample project to demonstrate [Threadily](https://github.com/k2snowman69/threadily), a C++/Javascript object marshalling system across multiple threads

This sample project is a git monorepo with multiple sub repositories. We highly recommend reading [GitHub's recommendations](https://blog.github.com/2016-02-01-working-with-submodules/) regarding submodules. It's meant mainly as an example and as a test bed for Threadily to validate changes via CI.

# Cloning this repo

This repository makes use of submodules so it's best to use the following command

```
git clone --recursive https://github.com/k2snowman69/threadily
```

or if you have already cloned the repository without --recursive, in your local repository run

```
git submodule update --init --recursive
```

# Dependencies

Take a look in `shared-makefile` and it's readme should define all the dependencies this respository requires.

# Building

Just run make. For more details look inside the makefile.
