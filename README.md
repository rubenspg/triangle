[![Build Status](https://travis-ci.org/rubenspg/triangle.svg?branch=master)](https://travis-ci.org/rubenspg/triangle)

# Triangle

## Description

Ruby program that defines if a triangle with the received parameters is equilateral, isosceles or scalene.

## Installation

First, clone the repository and install the dependencies:

```
git clone git@github.com:rubenspg/triangle.git
```

You need to have Ruby installed. If you don't have follow [this steps](https://www.ruby-lang.org/en/documentation/installation/).

Install the dependecies:
```
gem install thor
```

## Usage

The Triangle program allows you to recognize given three lengths if a triangle is equilateral, isosceles or scalene.

To execute the program go to the root folder and execute the following command line:

### Help

The help command will describe the available options. You can execute the following command:

```
$ ruby bin/cli.rb help triangle
Usage:
  cli.rb triangle side1, side2, side3

Type the integer numbers as arguments and you will identify which type of triangle it is
```

It will show you the description of triangle command.

### Triangle

To execute the triangle command and find out the triangle type, execute the following:

**ruby bin/cli.rb triangle param1 param2 param3**

Note that the both parameters are integer numbers.

Examples:
```
$ ruby bin/cli.rb triangle 2 2 3
The triangle is isosceles
ubuntu@george-devenv:~/shared/workspace/rubens/triangle$ ruby bin/cli.rb triangle 2 2 2
The triangle is equilateral
ubuntu@george-devenv:~/shared/workspace/rubens/triangle$ ruby bin/cli.rb triangle 4 5 2
The triangle is scalene
```

## TravisCI

TravisCI is continous integration service linked to this repository that executes the build process.

Here is the link of the builds: https://travis-ci.org/rubenspg/triangle

## Contributing

You are welcome to contribute. Just follow these steps:

### Clone or fork the repository

```
git clone git@github.com:rubenspg/triangle.git
```

### Do some work

```
git checkout master
git pull origin master
git checkout -b contrib/branch_name
```

### Execute the tests

Before you commit and push your changes, run the tests to make sure everything is working:
```
rake test
```

### Create a PR
```
git push -u origin contrib/branch_name
```
