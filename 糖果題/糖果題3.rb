def fibo(n)

  # 當傳入的引數 n 為 0 時，會回傳 0
  if n == 0
    return 0

  # 當傳入的引數 n 為 1 或 n 為 2 時，會回傳 1
  elsif (n == 1) || (n == 2)
    return 1
  
  # 當傳入的引數 n 為 3 或 n > 3 時，會回去 if..elsif 裡面進行判斷，直到結果為 f(0)或 f(1)時，才會回傳累加值後，結束遞迴
  elsif n >= 3
    return fibo(n-1) + fibo(n-2)

  # 當傳入的引數有錯時，會印出錯誤，不過這邊沒有做錯誤處理，如果是傳入非數字，會直接噴錯誤
  else
    puts "輸入錯誤"
  end
end

p fibo(4)
p fibo(6)
p fibo(7)