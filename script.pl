use Data::Dumper;
my $filename="file";
open(my $fh,"<:utf8",$filename)
 or die "Cant open $filename: $!";
my @arr;
my $row_counter=0;
while(<$fh>){
	@a = split /:/,$_;
	for(my $i; $i<@a;$i++){
		$arr[$row_counter][$i] = $a[$i];
	}
	$row_counter++;
}
print Dumper @arr
