function result = myFunctionImproved(input)
  % Improved version with more robust error handling
  if ~isnumeric(input) || input < 0
    error('Input must be a non-negative number');
  end
  result = input * 2;
end

% Example usage
input = -5;
try
    result = myFunctionImproved(input);
    disp(['Result: ', num2str(result)]);
catch e
    disp(['Error: ', e.message]);
end
input = 'abc';
try
    result = myFunctionImproved(input);
    disp(['Result: ', num2str(result)]);
catch e
    disp(['Error: ', e.message]);
end