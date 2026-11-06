%% MAIN TASK - VARIANT 3
clc;
clear;

%% Task 1 - Structure array

students(1).Name = 'John';
students(1).Age = 20;

students(2).Name = 'Anna';
students(2).Age = 21;

students(3).Name = 'Peter';
students(3).Age = 19;

disp('Original structure:');
disp(students);

students = orderfields(students, {'Age', 'Name'});

disp('Structure after changing field order:');
disp(students);


%% Task 2 - Operation flow control

while true

    a = input('Enter a: ');
    b = input('Enter b: ');
    c = input('Enter c: ');

    if a == 0 && b == 0 && c == 1
        disp('Program finished.');
        break;
    end
    if a < 0
        a_result = a^2;
    else
        a_result = a^3;
    end
    if b < 0
        b_result = b^2;
    else
        b_result = b^3;
    end
    if c < 0
        c_result = c^2;
    else
        c_result = c^3;
    end

    disp('Results:');
    disp(['a = ', num2str(a_result)]);
    disp(['b = ', num2str(b_result)]);
    disp(['c = ', num2str(c_result)]);
    disp(' ');

end