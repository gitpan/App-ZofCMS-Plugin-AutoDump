package App::ZofCMS::Plugin::AutoDump;

use warnings;
use strict;

our $VERSION = '0.0101';
use Data::Dumper;

sub new { bless {}, shift }

sub process {
    my ( $self, $t, $q ) = @_;

    die Dumper [
        $q,
        $t,
    ];
}

1;
__END__

=head1 NAME

App::ZofCMS::Plugin::AutoDump - debugging plugin to quickly dump out query parameters and ZofCMS Template hashref

=head1 SYNOPSIS

    plugins => [
        { Sub => 200 },
        { AutoDump => 300 },
    ],

    plug_sub => sub { ## this is optional, just for an example
        my ( $t, $q ) = @_;
        $t->{foo} = 'bar';
        $q->{foo} = 'bar';
    },

=head1 DESCRIPTION

The module is a plugin for L<App::ZofCMS> that provides means to quickly use L<Data::Dumper>
to dump query parameters hashref as well as ZofCMS Template hashref.

This documentation assumes you've read L<App::ZofCMS>, L<App::ZofCMS::Config> and L<App::ZofCMS::Template>

=head1 HOW TO USE

    plugins => [
        { Sub => 200 },
        { AutoDump => 300 },
    ],

This plugin requires no configuration. To run it simply include it in the list of plugins
to execute with the priority set at the right point of execution line.

=head1 HOW IT WORKS

Plugin assumes that you're using L<CGI::Carp> (should be on by default if you've used
C<zofcms_helper> script to generate site's skeleton). When plugin is run it calls
C<die Dumper [ $q, $t ]> where C<$q> is query parameters hashref and C<$t> is
ZofCMS Template hashef... therefore, in the browser's output the first hashef is the query.

=head1 AUTHOR

'Zoffix, C<< <'zoffix at cpan.org'> >>
(L<http://haslayout.net/>, L<http://zoffix.com/>, L<http://zofdesign.com/>)

=head1 BUGS

Please report any bugs or feature requests to C<bug-app-zofcms-plugin-autodump at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=App-ZofCMS-Plugin-AutoDump>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc App::ZofCMS::Plugin::AutoDump

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=App-ZofCMS-Plugin-AutoDump>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/App-ZofCMS-Plugin-AutoDump>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/App-ZofCMS-Plugin-AutoDump>

=item * Search CPAN

L<http://search.cpan.org/dist/App-ZofCMS-Plugin-AutoDump/>

=back



=head1 COPYRIGHT & LICENSE

Copyright 2009 'Zoffix, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

