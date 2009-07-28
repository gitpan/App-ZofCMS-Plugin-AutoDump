use Test::More tests => 2;

BEGIN {
    use_ok('Data::Dumper');
    use_ok( 'App::ZofCMS::Plugin::AutoDump' );
}

diag( "Testing App::ZofCMS::Plugin::AutoDump $App::ZofCMS::Plugin::AutoDump::VERSION, Perl $], $^X" );
