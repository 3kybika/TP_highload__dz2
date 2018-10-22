from django.shortcuts import render_to_response, get_object_or_404, redirect, render
from statsd.defaults.django import statsd
import time
import random
import math



def strangeFunction(request):
    start = time.time()
    someNumber = random.randint(0,100);
    for i in range(100000):
        someNumber += math.atan(math.sin(someNumber * random.randint(0,100)))*math.atan(math.sin(someNumber * random.randint(0,100)))
    
    statsd.incr('s1__requests_num')
    perf_time = int((time.time() - start) * 1000)
    statsd.timing('s1__perf_time', perf_time)

    return render(request,'index.html', {'someNumber':someNumber})
    