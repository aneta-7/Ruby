require 'benchmark'
require_relative '../lib/bubleSort.rb'
require_relative '../lib/insertSort.rb'
require_relative '../lib/mergeSort.rb'

array1 = (1..500).map { rand }
array5 = (1..1_000).map { rand }

Benchmark.bm(10) do |x|
  x.report('500 sort!           ') {array1.dup.sort!}
  x.report('1_000 sort!         ') {array5.dup.sort!}

  x.report('500 bubbleSort!     ') {bubble_sort!(array1)}
  x.report('1_000 bubbleSort!   ') {bubble_sort!(array5)}

  x.report('500 insertSort!     ') {insertion_sort!(array1)}
  x.report('1_000 insertSort!   ') {insertion_sort!(array5)}

  x.report('500 mergeSort!      ') {merge_sort!(array1)}
  x.report('1_000 mergeSort!    ') {merge_sort!(array5)}

end
