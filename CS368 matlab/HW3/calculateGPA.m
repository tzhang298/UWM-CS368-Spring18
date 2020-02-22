function GPA = calculateGPA(filename)
content = load (filename);
gradepoints = sum(content(:, 2).* content(:, 3));
credits = sum(content(:, 3));
GPA = gradepoints ./  credits;
end
