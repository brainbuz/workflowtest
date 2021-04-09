use strict;
use warnings;
package workflowtest;

# ABSTRACT: turns baubles into trinkets
our $VERSION='2021.0.00';

use 5.8.8;
use Sort::Hash;

sub hello {
  return "Hello @{[ @_ ]}";
}

1;
