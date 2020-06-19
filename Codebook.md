Feature Selection 
=================

The features selected for this database come from the -accelerationelerometer and -angularvelocityscope 3-axial raw signals t-acceleration-XYZ and t-angularvelocity-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the -accelerationeleration signal was then separated into body and gravity -accelerationeleration signals (timedomainsignalbody-acceleration-XYZ and timedomainsignalgravity-acceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear -accelerationeleration and angular velocity were derived in time to obtain -jerksignal signals (timedomainsignalbody-acceleration-jerksignal-XYZ and timedomainsignalbody-angularvelocity-jerksignal-XYZ). Also the magnitudenitude of these three-dimensional signals were calculated using the Euclidean norm (timedomainsignalbody-accelerationmagnitude, timedomainsignalgravity-accelerationmagnitude, timedomainsignalbody-acceleration-jerksignalmagnitude, timedomainsignalbody-angularvelocitymagnitude, timedomainsignalbody-angularvelocity-jerksignalmagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencydomainsignal:-body-acceleration-XYZ, frequencydomainsignal:-body-acceleration-jerksignal-XYZ, frequencydomainsignal:-body-angularvelocity-XYZ, frequencydomainsignal:-body-acceleration-jerksignalmagnitude, frequencydomainsignal:-body-angularvelocitymagnitude, frequencydomainsignal:-body-angularvelocity-jerksignalmagnitude. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timedomainsignalbody-acceleration-XYZ
timedomainsignalgravity-acceleration-XYZ
timedomainsignalbody-acceleration-jerksignal-XYZ
timedomainsignalbody-angularvelocity-XYZ
timedomainsignalbody-angularvelocity-jerksignal-XYZ
timedomainsignalbody-accelerationmagnitude
timedomainsignalgravity-accelerationmagnitude
timedomainsignalbody-acceleration-jerksignalmagnitude
timedomainsignalbody-angularvelocitymagnitude
timedomainsignalbody-angularvelocity-jerksignalmagnitude
frequencydomainsignal:-body-acceleration-XYZ
frequencydomainsignal:-body-acceleration-jerksignal-XYZ
frequencydomainsignal:-body-angularvelocity-XYZ
frequencydomainsignal:-body-accelerationmagnitude
frequencydomainsignal:-body-acceleration-jerksignalmagnitude
frequencydomainsignal:-body-angularvelocitymagnitude
frequencydomainsignal:-body-angularvelocity-jerksignalmagnitude

The set of variables that were estimated from these signals are: 

mean(): Mean value
standarddeviation(): Standard deviation
medianabsolutedeviation(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
signalmagnitudearea(): Signal magnitudenitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
interquartilerange(): Interquartile range 
signalentropy(): Signal entropy
autoregressioncoefficient(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxvalueindex(): index of the frequency component with largest magnitudenitude
meanfrequency(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
timedomainsignalbody-accelerationMean
timedomainsignalbody-acceleration-jerksignalMean
timedomainsignalbody-angularvelocityMean
timedomainsignalbody-angularvelocity-jerksignalMean
