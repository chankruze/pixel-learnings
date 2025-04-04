=begin
Finish the method definition given below.

The method folded_thickness should return the thickness (in meters) of a piece of paper after folding it folds number of times. The paper starts off with a thickness of 0.0005m given as BASE_THICKNESS. The method should return a string with unit of thickness. Example: '0.0012m'.
=end

BASE_THICKNESS = 0.0005
def folded_thickness(folds)
  "#{BASE_THICKNESS * (2 ** folds)}m"
end
