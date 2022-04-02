# MechaCar_Statistical_Analysis
R

## Project Overview

The goal of the project is to analyze metrics that can affect the manufacturing a new car prototype and compare vehicle performance across different manufacturer lots. These metrics include vehicle length, weight, spoiler angle, ground clearance, AWD capabilities, MPG, and PSI.


# Linear regression to predict MPG

<img width="1440" alt="linear_regress_mechaCar" src="https://user-images.githubusercontent.com/93267002/161394530-5409bd8f-b651-4839-a85b-721e77649327.png">

## 3 Key Takeaways:
1.Variance of a non-random variable is usually 0. Therefore from statement we can say the intercept, vehicle_length, and ground_clearance coeeficients can be said to provide a non-random amount of variance to the mpg values as seen in the image above.

2.At a significance level of 0.05, due to the the three non-random varible we are able to reject the null hypothesis because of the extremely small p-value. The null hypothesis of a linear regression states that the slope (β1) is equal to 0. However, if we reject the null hypothesis, we're stating that alternative (β1 ≠ 0) is true. Thus, proving that the slope is not 0.

3.Multiple R-squared increases as more variables are passed through the regression.The adjusted R-squared controls against this increase, and adds penalties for the number of predictors in the model, thus making it a more accurate predictor of how effective the linear model is. An adjusted R-square of 0.6825 which indicates that the linear model predicts the mpg of MechaCar prototypes relatively well.

# Summary on Suspension Coil
<img width="455" alt="total_summary" src="https://user-images.githubusercontent.com/93267002/161394930-bdbc653f-8d9f-428e-bd4c-e82119729ba0.png">

<img width="524" alt="lot_summary" src="https://user-images.githubusercontent.com/93267002/161394935-b2814280-c16c-4f68-90c5-a0686fbeed2f.png">

From our analysis above we can conclude that curren manufacting data meets the 100 pounds per square in variance limation. But when we break out the summary by lots we can see that lot 3 show a much higher variance, which does not meet the necessary suspension coils requirement.

## T-Test on Suspension Coils
<img width="659" alt="t test_entire_lot" src="https://user-images.githubusercontent.com/93267002/161395851-61181d8a-7aef-43b8-b1a7-829f96c74c1a.png">

As we observed the t-test on PSI the whole lot our p-value was 0.06028 which means we cannot reject the null hypothesis. There is a correlation between p-value and confidence intervals as the p-values gets larger, the confidence interval becomes smaller, indication there is more precision in predicting the true population mean.


<img width="487" alt="t test_lots_PSI" src="https://user-images.githubusercontent.com/93267002/161395227-ddb42a72-9166-4797-8c1a-1187d6065955.png">

### Lot 1
Lot 1 has a p value of 1, much higher than 0.05 which means we cannot reject our null hypothesis. Like explained above for the t-test on the whole lot as the p value increases the confindence interval become smaller.

### Lot 2
For Lot 2 the p value is 0.6072 is a little bit higher than the 0.05, so this mean we cannot reject our null hypothesis again. As well as the confidence interval is small.

### Lot 3
Lastly lot 3 we observed a p value of 0.04168 just below 0.05 which means we can reject the null hypothesis for this lot. The confindence interval is larger when compared to the two other lots.

## Study Design: MechaCar vs Competition
Another statistical study that can be interesting to see is how the mpg can be used to find city or highway fuel vs cost. We would like to prove that MechaCar cost per mpg in city or highways is less than the competitors.
 
What metric or metrics are you going to test?
Metric to test are: Mean,Median SD, P-Value, confindence interval and the adjusted r-squared values.

What is the null hypothesis or alternative hypothesis?
The null hypothesis is that, MechaCars cost per city and highway is no difference from its competitor.
The alternative hypothesis is that, MechaCar cars cost per city and highway is cost less that its' competitor.

What statistical test would you use to test the hypothesis? And why?
Instead of a t-test i would do a ANOVA test, since we have different contributing variable that can indicate what the cost for city and highway fuel. Along with the ANOVA a summary test. I would like see how the P-value and confindence interval levels correlate.

What data is needed to run the statistical test?
Data needed for this test would include, vehicle type, vehicle weight, vehicle mpg, cost mpg, city and highway fuel.
