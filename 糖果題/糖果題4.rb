=begin
  泡沫排序法: 將相鄰的元素做比較，如果前面元素大於後面元素，會將彼此做交換。
  這邊是設計兩個 for 迴圈 :
  - 外圈的 for 會根據陣列的索引數量去 run，例如 length 為 8，但 index 是從 0 開始，所以實際上是跑 0~7，但因為比較是兩個為一組，所以會是跑 0 ~ 6(7次)。
  - 內圈的 for 搭配第一次跑外圈後，會將最大值往最大的索引放置，所以第一次內圈會跑 7(n) 次，第二次後開始會是 n-1 次，第三次是 n-2次，以此類推。
=end

def bubble_sort(arr)
  arr_length = arr.length # 計算目前陣列的索引數量
  
  for i in (0...arr_length-1) #外圈的 for
    # p "第#{i+1}次外圈的排序"
    for j in (0...arr_length-1-i) #內圈的 for
      if arr[j] > arr[j+1] # 如果前面元素大於後面元素，會將彼此做交換
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
      # p "第#{j+1}次內圈的排序:",arr
    end
  end
  return arr
end

p bubble_sort([2, 4, 1, 5, 7, 9, 8, 3])