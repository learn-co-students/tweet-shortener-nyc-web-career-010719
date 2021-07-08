# Write your code here.

def dictionary 
  
  {
    "Hello" => "hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "b",
    "You" => "u",
    "At" => "@",
    "And" => "&"
  }
end

# holiday_hash.each do |seasons,holidays|
#     holidays.each do |h,s|
     
#       s.each do |el|
        
#         if el == "BBQ"
#           arr<< holidays.key(s)
#         end
#       end
      
def word_substituter(tweet)
  tweetarr = tweet.split(' ')
  newtweet = []
  tweetarr.each do |word|
    if dictionary.key?(word.capitalize) 
        newtweet << dictionary[word.capitalize].to_s
        
      else 
        newtweet << word
      end
    
  end
  tweetstr = newtweet.join(' ')
  
  return tweetstr
end

def bulk_tweet_shortener(tweetarr)
  tweetarr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  newtweet = selective_tweet_shortener(tweet)
  if newtweet.length >140
    return newtweet[0...137]+'...'
  end
  return newtweet
end