use strict;
use warnings;
package workflowtest;

use 5.8.8;
sub hello {
  return "Hello @{[ @_ ]}";
}

1;
