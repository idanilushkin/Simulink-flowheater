# Simulink-flowheater
## Simulink model of a variable flow heater

_см. ниже - на русском языке_


**Briefly:**
Variable flow heater model based on state-space representation. The spectral method of analysis of distributed systems is used.

**Abstract:**
The first order hyperbolic equation acts as a mathematical model of water flow heating with a variable rate. Using the spectral method of distributed systems, a representation of the problem is obtained in the form of an expansion into a series in an orthonormalized basis, which makes it possible to represent the solution in the form of a vector-matrix model of the state space. 
The state-space model is used to implement the Simulink model. The flow temperature at the heater inlet is taken into account due to the additional heating section at the begin of the heater. The flow heating model is implemented using MATLAB S-Function block.
The heater temperature calculation is based on the energy balance equation. The temperature of the heater wall is determined by heat flows between the external environment, the wall and the heated water flow. The wall temperature is assumed to be constant along the entire length of the heat exchanger.

As an example of running Simulink-model, the result of simulating a waste heat boiler as an object with distributed parameters is given.
Process data is used to verify the model.

>_To run the example, download the files:_ flowheater_demo.slx, flowheater_demo.mat, sfFlowHeating.m
>
>Simulink Version 8.7 (R2016a)



**NB!** If you use this model in scientific research, please cite 

I. Danilushkin, "State-Space Model of Spatially Distributed Flow Heating with Time-Varying Parameters," 2023 International Conference on Industrial Engineering, Applications and Manufacturing (ICIEAM), Sochi, Russian Federation, 2023, pp. 993-997, doi: 10.1109/ICIEAM57311.2023.10139082.

**OR**

Danilushkin I.A., Kolpashchikov S.A., Lusenko D.S. Dynamic model of a waste heat boiler // Vestnik of Samara State Technical University. Technical Sciences Series. - 2023. - Vol. 31. - N. 2. - P. 31-42. doi: 10.14498/tech.2023.2.3


----

## Simulink-модель нагрева потока с переменным расходом
В качестве математической модели нагрева потока воды с переменной скоростью выступает гиперболическое уравнение первого порядка. С помощью спектрального метода распределённых систем получено представление объекта в виде разложения в ряд по ортонормированному базису, что позволило получить решение в виде векторно-матричной модели пространства состояний. 
Представление в пространстве состояний используется для реализации Simulink-модели. Температура потока на входе нагревателя учитывается за счёт участка дополнительного нагрева на начальном участке нагревателя. Модель нагрева потока реализована с использованием блока MATLAB S-Function. 
Расчёт температуры нагревателя базируется на уравнении энергетического баланса. Температура стенки нагревателя определяется тепловыми потоками между внешней средой, стенкой и нагреваемым потоком воды. Температура стенки принята постоянной по всей длине теплообменного аппарата.

В качестве примера расчёта приведён результат моделирования водогрейного котла утилизатора как объекта с распределёнными параметрами. Для верификации модели используются данные технологического процесса.

>_Для запуска примера скачайте файлы:_ flowheater_demo.slx, flowheater_demo.mat, sfFlowHeating.m
>
>Simulink Version 8.7 (R2016a)


**Важно!** Если вы используете эту модель в своих научных исследованиях, пожалуйста, сошлитесь на мои публикации:

I. Danilushkin, "State-Space Model of Spatially Distributed Flow Heating with Time-Varying Parameters," 2023 International Conference on Industrial Engineering, Applications and Manufacturing (ICIEAM), Sochi, Russian Federation, 2023, pp. 993-997, doi: 10.1109/ICIEAM57311.2023.10139082.

**или**

Данилушкин И.А., Колпащиков С.А., Лысенко Д.С. Динамическая модель водогрейного котла утилизатора // Вестник Самарского государственного технического университета. Серия «Технические науки». - 2023. - Т. 31. - №2. - C. 31-42. doi: 10.14498/tech.2023.2.3
