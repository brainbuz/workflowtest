use strict;
use warnings;
use workflowtest;
use 5.8.8;
use Test::More 'tests' => 2;

is( workflowtest::hello(), 'Hello ', 'hello with no arguments');
is( workflowtest::hello( 'all'), 'Hello all', 'hello with 1 argument');
