# multi_python

T# Snu Python Cookbook README


[cookbook]: https://supermarket.chef.io/cookbooks/multi_python


A cookbook to performs installations of Multiple versions of Python using tar_package

## Dependencies

This cookbook depends on forked tar cookbook,

https://github.com/bipinbachhao/tar

Only forked cookbook supports tar.xz so get this cookbook

## Requirements

This cookbook is tested against a matrix of Chef versions and platforms:

- Chef 14
- Chef 13

X

- Ubuntu 16.04
- Ubuntu 18.04
- Debian 9.5
- Centos 6.10
- Centos 7.5

## Usage
Set installation path attribute in the recipe or from wrapper cookbook

## Recipes

***default***

Installs Python 2 and 3 from source using tar_package and some default packages using newly installed python versions

## Attributes

## Maintainers

- Bipin Bachhao <bipinbachhao@gmail.com>
