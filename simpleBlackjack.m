% This function simulates playing many hands of
% Simple Blackjack where the player continually
% hits up to a given limit. Final score for each
% hand is computed, and the average score over all
% hands is returned.
%
% INPUT limit – The player always hits if their
% hand value is less than limit
% INPUT trials – The number of hands to simulate
%
% OUTPUT avgScore – The average final score of
% all hands.

function avgScore = simpleBlackjack(limit, trials)
    cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10];  %all possible card values; 10 is used for J Q and K
    total_over_all_hands = 0; 
    for t = 1:trials
        total_score_at_hand = 0; %for all trials
        
        while total_score_at_hand < limit %draw cards until total_score_at_hand exceeds the limit or is at the limit
            card = cards(randi(12));  % randomly select an index from 1 to the length of the card; here the length of card is 12
            total_score_at_hand = total_score_at_hand + card;
        end
        
          total_over_all_hands =   total_over_all_hands + total_score_at_hand;  % Add the hand total to the total score across all hands
    end
    
    avgScore = total_over_all_hands / trials; %calculates the average score 
end

%so now if we run the code "avgScore = simpleBlackjack( 15, 1000000 )" , we will get the output as "avgScore = 18.5682" 
