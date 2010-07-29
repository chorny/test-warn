#!perl -T

use Test::More;
eval "use Test::Pod 1.14";
if ($@) {
  plan skip_all => "Test::Pod 1.14 required for testing POD" ;
} else {
  diag("Test::Pod version $Test::Pod::VERSION");
}
all_pod_files_ok();
