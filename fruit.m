% This function prints for values from 1 to N:
% “apple” if the value is divisible by 2
% “banana” if the value is divisible by 5
% The number itself if neither is true
% “applebanana” if both are true

function [] = fruit( N )
  for i = 1 : N   %loop through all numbers from 1 to N
    if rem(i,2) == 0 && rem(i,5) == 0   %if the number is divisible by 2 or 5, the remainder is 0 thus the rem function's output will be 0 
      fprintf("applebanana\n");   % \n used to make sure that each output appears on a new line
    elseif rem(i,2) == 0
      fprintf("apple\n")
    elseif rem(i,5) == 0 
      fprintf("banana\n")
    else 
      fprintf("%d\n", i)  %if the number is not divisible by 2 or 5 then the code will print the number itself
    end 
  end 
end
