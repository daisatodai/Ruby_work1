def input_evaluaton
  puts "1から5で評価を入力してください"
  point = gets.to_i

  while true
    if point <= 0 || point > 5 
      puts "1から5で入力してください"
      point = gets.to_i
    else 
      break
    end  
  end

  puts "コメントを入力してください"
  comment = gets
  post = "ポイント：#{point } コメント：#{comment}"
  File.open("data.txt", "a") do |file|
    file.puts(post)
  end
end

def input_result
  puts "これまでの結果"
  File.open("data.txt", "r") do |file| #読み込む
    file.each_line do |line| #ファイルっていう名前で
      puts line
    end
  end
end

while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i

  case num
  when 1 #メソッド呼び出す→ここをシンプルにする
    input_evaluaton
  when 2 #メソッド呼び出し
    input_result
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end