require "pry"


def dictionary
    dictionary_hash = {
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
        
def word_substituter(tweet)
    tweet_arr = tweet.split(" ")
    tweet_arr.each_with_index do |word, index|
        dictionary.keys.each do |key|
           if word.casecmp(key) == 0
               tweet_arr[index] = dictionary[key]
           end
        end
    end
    tweet_arr.join(" ")
end


def bulk_tweet_shortener(tweets)
     tweets.collect do |tweet|
        puts word_substituter(tweet)
     end
end


def selective_tweet_shortener(tweet)
       if tweet.length > 140
           word_substituter(tweet)
       else
        tweet
       end
end



def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
        word_substituter(tweet)[0..139]
    else
        word_substituter(tweet)
    end
end
