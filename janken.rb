def game
puts "最初はグー！じゃんけん・・・"

def janken
    puts "0:グー 1:チョキ 2:パー"
    
    player_hand = gets.to_i
    partner_hand = rand(3)
    
    jankens = ["グー", "チョキ", "パー"]
    
    if player_hand == partner_hand
        puts "あなたの手は#{jankens[player_hand]} 相手の手は#{jankens[partner_hand]}"
        puts "あいこで・・・"
        return true
    elsif (player_hand == 0 && partner_hand == 1)||(player_hand == 1 && partner_hand == 2)||(player_hand == 2 && partner_hand == 0)
        puts "あなたの手は#{jankens[player_hand]}相手の手は#{jankens[partner_hand]}"
        puts "あなたの勝ち！"
        puts "---------------"
        @result = "win"
        return false
    else
        puts "あなたの手は#{jankens[player_hand]} 相手の手は#{jankens[partner_hand]}"
        puts "あなたの負け"
        puts "---------------"
        @result = "lose"
        return false
    end
end

next_game = true

while next_game
    next_game = janken
end

if @result == "win"
    puts "あっち向いて・・・"
    puts "0:上 1:下 2:右 3:左"
    
    player_hoi = gets.to_i
    partner_hoi = rand(4)
    
    hois = ["上", "下", "右", "左"]
    
    puts"ほい！"
    
    if player_hoi == partner_hoi
        puts "あなたの手は#{hois[player_hoi]}相手の手は#{hois[partner_hoi]}"
        puts "あなたの勝ち！"
        puts "---------------"
        return false
    else
        puts "あなたの手は#{hois[player_hoi]}相手の手は#{hois[partner_hoi]}"
        puts "引き分け"
        puts "---------------"
        return true
    end
end

if @result == "lose"
    puts "あっち向いて・・・"
    puts "0:上 1:下 2:右 3:左"
    
    player_hoi = gets.to_i
    partner_hoi = rand(4)
    
    hois = ["上", "下", "右", "左"]
    
    puts"ほい！"
    
    if player_hoi == partner_hoi
        puts "あなたの手は#{hois[player_hoi]}相手の手は#{hois[partner_hoi]}"
        puts "あなたの負け！"
        puts "---------------"
        return false
    else
        puts "あなたの手は#{hois[player_hoi]}相手の手は#{hois[partner_hoi]}"
        puts "引き分け"
        puts "---------------"
        return true
    end
end
end

next_game = true

while next_game
    next_game = game
end