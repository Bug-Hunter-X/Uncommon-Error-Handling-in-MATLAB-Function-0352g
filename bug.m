function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = input * 2; % Some calculation
end

% Example usage
input = -5;
try
    result = myFunction(input);
    disp(['Result: ', num2str(result)]);
catch e
    disp(['Error: ', e.message]);
end