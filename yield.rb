def find(dir)  
  Dir.entries(dir).each {|f| yield f} #获得dir目录下的文件名列表;对每个文件名,用yield来处理(至于怎么处理，还不知道，占个位置先^_^)  
end  

find("/Users/Great/Workbench/") do |f| #block开始  
  puts f  #用输出文件名这个语句，真正实现了yield的处理(也可以用任何其他语句)  
end 