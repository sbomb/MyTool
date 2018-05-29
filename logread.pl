#

# 提取日志文件中所有含有jpg.*ms的行，并输出。
# 2018-05-29 14:51:52.618 ERROR [pool-4-thread-2][:] - \20180529\f3d7c09c-ec0b-43e5-80b1-c8f4979346d2.jpg 特征提取使用时间：62 ms
#use Encode
open(FILE  ,  "<" ,"face.log") || die "cannot open the file : $!\n" ;

#$str = encode("utf8" ,  "特征提取使用时间") ;

while($line = <FILE>){
	#print  "----- $line";
	$line =~ /jpg.*ms/ ;
	$t = $& ;
	if($t){
		print "time is $t\n"
	}
}
close FILE ;