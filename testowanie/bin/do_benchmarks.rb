require 'benchmark'
require_relative '../lib/bubleSort.rb'
require_relative '../lib/insertSort.rb'
require_relative '../lib/mergeSort.rb'

array5 = (1..500_000).map { rand }
array10 = (1..1_000_000).map { rand }

array = (1..100).map
random_order = (1..1_000_000).map { rand }

Benchmark.bm(4) do |x|
  x.report('100_000 sort!') {array5.dup.sort!}
  x.report('200_000 sort!') {array10.dup.sort!}

  x.report("Bubble Sort (random):") { random_order.bubble_sort!}

  x.report('bubble_sort!') {array.dup.bubble_sort!}
  x.report('bubble_sort!') {array.dup.bubble_sort!}

  x.report('insertion_sort!') {array.dup.insertion_sort!}
  x.report('insertion_sort!') {array.dup.insertion_sort!}

  x.report('merge_sort!') {array.dup.merge_sort!}
  x.report('merge_sort!') {array.dup.merge_sort!}
end
