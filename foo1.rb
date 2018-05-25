require "benchmark"

def cal_explicit(a,b,op)
    op.call(a,b)
end 

def cal_implicit(a,b)
    yield(a,b)
end 

Benchmark.bmbm(10) do |report| 
    report.report("explicit") do
        add = lambda {|x,y| x+y} 
        1000.times { cal_explicit(5,5,add)}
    end

    report.report("implicit") do 
        1000.times { cal_implicit(5,5) {|x,y| x + y }}
    end
end