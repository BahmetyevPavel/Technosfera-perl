#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Вычисление простых чисел

=head1 run ($x, $y)

Функция вычисления простых чисел в диапазоне [$x, $y].
Пачатает все положительные простые числа в формате "$value\n"
Если простых чисел в указанном диапазоне нет - ничего не печатает.

Примеры: 

run(0, 1) - ничего не печатает.

run(1, 4) - печатает "2\n" и "3\n"

=cut

sub run {
    my ($x, $y) = @_;
    for (my $i = $x; $i <= $y; $i++)
    {
        if ($i >= 2)
        {
            my $flag=0;
            
            for ( my $divisor=2 ; $divisor < $i; $divisor++)
            {
                if ( $i % $divisor eq 0 ) {
                    
                    $flag++;
                }
            }
            
            
            if ($flag eq 0){
                print "$i\n";
            }
        }
    }
}

1;
