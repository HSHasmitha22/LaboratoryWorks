%% COMPLEMENTARY TASK - VARIANT 3
clc;
clear;

sentence = input('Enter a sentence with extra spaces: ', 's');

original_length = length(sentence);

i = 1;

while i < length(sentence)

    if sentence(i) == ' ' && sentence(i + 1) == ' '
        sentence(i + 1) = [];

    else
        i = i + 1;
    end

end

new_length = length(sentence);

removed_spaces = original_length - new_length;

disp(' ');
disp(['Corrected sentence: ', sentence]);
disp(['Number of removed spaces: ', num2str(removed_spaces)]);