%%
% Author name:[Brandon Colligen]
%Email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Assignment 2
%Task: Simple Encryption Function
% Date: 10-18-24



%Defining Ceasar Cipher
function e_m = c_c(message, shift_value)
asciivalue = double(message);

%Shift each letter by shift_value
shiftedvalues = asciivalue + shift_value;

%Altering shifted values back to original
for i = 1:length(shiftedvalues)
    if shiftedvalues(i) > double('z')
        shiftedvalues(i) = shiftedvalues - 26;
    elseif shiftedvalues < double('a')
        shiftedvalues(i) = shiftedvalues + 26;
    end
end
%Restore original message
e_m = char(shiftedvalues);
end

%Enter message and shift number (1-25)
message = input ('enter the message to encript, lowercase): ', 's');
shift_value = input('Input shift value(1-25):');
e_m = c_c(message, shift_value);

%Print starting message and encrypted message
fprintf('Starting message: %s\n', message);
fprintf('Encrypted message: %s\n', e_m);