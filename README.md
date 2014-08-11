Description
===========

Chef cookbook for installing/updating a list of packages from an attribute.

Recipe
=======

default
-------

Simply loops over the contents of `node['packages']` and installs/updates them with the `package` resource.
