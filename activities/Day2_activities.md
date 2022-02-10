# Day 2 Activities

1. Let's create a function `temp_conv`, which converts the temperature in Fahrenheit (input) to the temperature in Kelvin (output). We could perform a two-step calculation: first convert from Fahrenheit to Celsius, and then convert from Celsius to Kelvin. The formula for these two calculations are as follows: temp_c = (temp_f - 32) * 5 / 9; temp_k = temp_c + 273.15. 

To test your function, if your input is 70, the result of `temp_conv(70)` should be 294.2611.

Ans:
```
temp_conv <- function(temp_f) {
  temp_c = (temp_f - 32) * 5 / 9
  temp_k = temp_c + 273.15
  return (temp_k)
}
```

2. Now we want to round the temperature in Kelvin (output) to one decimal place. Use the `round()` function and the `temp_conv` function to achive this in one line code. If your input is 70, the output should now be 294.3.

Ans:
```
round(temp_conv(70), digits = 1)
```
