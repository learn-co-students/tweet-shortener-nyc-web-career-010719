# Write your code here.
def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(string)
  tweet_array = string.split(" ")
  substituted_tweet = ""
  tweet_array.each do |tweet_words|
    if(dictionary.has_key?(tweet_words.downcase))
      substituted_tweet << dictionary[tweet_words.downcase] << " "
    else
      substituted_tweet << tweet_words << " "
    end
  end
  return substituted_tweet.chomp(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if(tweet.length > 140)
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet[0..136] + "..."
  end
  return shortened_tweet 
end
