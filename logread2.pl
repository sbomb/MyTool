#
# 统计文件中数字出现从次数。本文的所有文件皆为数字，且每行为一数字。
#7
#7
#7
#8
#7
#7
#7
#use Encode
open(FILE  ,  "<" ,"a.txt") || die "cannot open the file : $!\n" ;

#$str = encode("utf8" ,  "特征提取使用时间") ;
@hits ;
while($line = <FILE>){
	#print  "----- $line";
	#$line =~ /\d/;     # 把所有非数字字符替换为空格
	#$line =~ tr/\t //d;     # 删除tab和空格
	
	#$t = $& ;
	if($line){
		$hits[$line] = $hits[$line] +  1 ;
		#print " $line\n"
	}	
}
close FILE ;

$length = scalar(@hits) ;

for( $i = 0 ; $i < $length ; $i ++  ){
	print "$i\t$hits[$i]\n" ;
}