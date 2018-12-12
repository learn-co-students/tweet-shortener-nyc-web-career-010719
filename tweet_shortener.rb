def dictionary
  dictionary = {
  "hello" => "hi",
  "Hello" => "Hi",
  "to" => "2",
  "To" => "2",
  "two" => "2",
  "Two" => "2",
  "too" => "2",
  "Too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  dictionary
  tweet_array = tweet.split(" ")
  final_tweet = []

  tweet_array.each do |tweet|
    dictionary.each do |word, shortened|
      if tweet == word
        tweet = shortened
      end
    end
    final_tweet.push(tweet)
  end

  final_tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  dictionary

  tweets.each do |tweet|
    tweet_array = tweet.split(" ")
    final_tweet = []

    tweet_array.each do |tweet|
      dictionary.each do |word, shortened|
        if tweet == word
          tweet = shortened
        end
      end
      final_tweet.push(tweet)
    end
    puts final_tweet.join(" ")
  end
end


def selective_tweet_shortener(tweet)
  dictionary

  if tweet.length > 140
    tweet_array = tweet.split(" ")
    final_tweet = []

    tweet_array.each do |tweet|
      dictionary.each do |word, shortened|
        if tweet == word
          tweet = shortened
        end
      end
      final_tweet.push(tweet)
    end
    return final_tweet.join(" ")
  else
    return tweet
  end

end


def shortened_tweet_truncator(tweet)
  dictionary

  if tweet.length > 140
    tweet_array = tweet.split(" ")
    final_tweet = []

    tweet_array.each do |tweet|
      dictionary.each do |word, shortened|
        if tweet == word
          tweet = shortened
        end
      end
      final_tweet.push(tweet)
    end
    return "#{final_tweet.join(" ")[0..136]}..."
  else
    return tweet
  end
end
