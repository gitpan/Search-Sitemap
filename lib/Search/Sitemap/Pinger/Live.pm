package Search::Sitemap::Pinger::Live;
$Search::Sitemap::Pinger::Live::VERSION = '2.13_01';
use 5.008003;
use strict;
use warnings;
our $AUTHORITY = 'cpan:JASONK';
use Moose;
extends 'Search::Sitemap::Pinger';
use namespace::clean -except => 'meta';

sub submit_url_for {
    my ( $self, $url ) = @_;
    my $submit = URI->new( 'http://webmaster.live.com/ping.aspx' );
    $submit->query_form( siteMap => $url );
    return $submit;
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

=head1 NAME

Search::Sitemap::Pinger::Live - Search::Sitemap::Pinger for Live

=head1 SYNOPSIS

See L<Search::Sitemap::Ping>.

=head1 METHODS

=head2 submit_url_for( $url )

Given a url for a sitemap file, returns the URL that you need to use in a GET
request in order to submit the provided url to the Search Engine.

=head1 SEE ALSO

L<Search::Sitemap::Ping>

L<http://webmaster.live.com/>

=head1 AUTHOR

Jason Kohles, E<lt>email@jasonkohles.comE<gt>


=head1 COPYRIGHT AND LICENSE

Copyright 2005-2009 by Jason Kohles

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

