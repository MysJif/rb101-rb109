NOUN = %w(apple arithmetic badge basket basketball battle beast beetle beggar brain 
          bubble bucket cactus cannon cattle celery cellar cloth coach coast crate 
          cream daughter donkey earthquake feast fifth finger flock frame furniture 
          geese ghost giraffe governor honey hope income island jeans judge lamp 
          lettuce marble month north south east west ocean patch plane playground 
          poison riddle scale seashore sidewalk shell sleet smoke bathtub nose sidewalk 
          sleet smoke bathtub nose son stage station throat throne title toothbrush 
          turkey umbrella underwear vacation vegetable poison riddle visitor voyage year)

VERB = %w(questions reaches rinses runs scatters stays swims talks turns unties uses vanishes visits 
          walks works yawns yells adds allows bakes bangs calls chases damages drops ends escapes 
          fastens fixes gathers grabs hangs hugs imagines itches jogs jumps kicks knits lands locks 
          marches mixes names notices obeys opens passes pitches promises)

ADJECTIVES = %w(abundant adorable agreeable alive angry beautiful bewildered big bitter 
                black blue boiling brave breeze broad broken bumpy calm careful chilly chubby 
                clean clever clumsy cold colossal cool creepy crooked damaged damp dead deafening 
                eager early easy elegant embarrased faint faithful famous fancy fast gentle gifted 
                giganteic glamourous handsome happy heavy helpfull helpless icy immense important 
                inexpensive itchy jealous jolly juicy kind large late lazy light magnificent 
                many massive melted narrow nervous nice noisy obedient obnoxious odd orange panicky 
                petite plain powerful proud quaint quick quiet rainy rapid red relieved rich salty 
                scary scrawny shallow shy tall tart tasteless teeny tender ugly uninterested 
                unsightly uptight vast victorious warm weak wet white witty young yummy)

ADVERB = %w(actually almost always angrily annually badly bashfully blidnly boldly bravely 
            calmly carefully carelessly certainly cleverly daintily deeply delightfully dimly 
            easily excitedly extremely fairly faithfully famously fatally foolishly generally 
            gently gladly greedily happily hastily heavily honestly immediately innocently 
            instantly interestingly jaggedly jealously justly joyfully keenly kindly knowingly 
            lazily lightly likely loudly madly mockingly mortally miserably naturally nervously 
            nicely noisily oddly openly painfully patiently perfectly playfully quickly quietly 
            rapidly readily recklessly reluctantly rigidly sadly safely selfishly sharply 
            tenderly terribl thightly thoughtfully urgently bainly viciously violently warmly 
            weakly wetly wildly)

def madlib
  madlib = File.read("madlib.txt").split("\n")

  madlib.each do |line|
    line.gsub!("%{noun}", NOUN.sample)
    line.gsub!("%{verb}", VERB.sample)
    line.gsub!("%{adjective}", ADJECTIVES.sample)
    line.gsub!("%{adverb}", ADVERB.sample)
    puts line
  end
end

madlib()