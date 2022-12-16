


##    BEAST:  A Bayesian Ensemble Algorithm for Change-Point Detection and Time Series Decomposition

####  BEAST (Bayesian Estimator of Abrupt change, Seasonality, and Trend) is a fast, generic Bayesian model averaging algorithm to decompose time series or 1D sequential data into individual components, such as abrupt changes, trends, and periodic/seasonal variations, as described in <ins>[Zhao et al. (2019)](https://go.osu.edu/beast2019)</ins>. BEAST is useful for *changepoint detection (e.g., breakpoints, structural breaks, regime shifts, or anomalies), trend analysis, time series decomposition (e.g., trend vs seasonality), time series segmentation, and interrupted time series analysis*. See a list of <a href="#publicationid"> selected studies using BEAST </a>.


**Quick Installation**
> BEAST was impemented in C/C++ but accessible from  R, Python, and Matlab.  Run the following to install:

* [Python](#python):   **`pip install Rbeast`**   
* [Matlab](#matlab):  **`eval(webread('http://b.link/rbeast',weboptions('cert','')))`**  
* [R lang](#r):  **`install.packages("Rbeast")`** 


   
**Quick Usage**

> One-liner code for Python, Matlab and R. Check below or [github.com/zhaokg/Rbeast](https://github.com/zhaokg/Rbeast) for more details.
```
# Python example
import Rbeast as rb; (Nile, Year)=rb.load_example('nile'); o=rb.beast(Nile,season='none'); rb.plot(o)

# Matlab example
load('Nile'); o = beast(Nile, 'season','none'); plotbeast(o)

# R example
library(Rbeast); data(Nile); o = beast(Nile); plot(o)
```



## Installation for R <a name=r> </a>

 <!---
 =====================================================================================
 =====================================================================================
 =====================================================================================
 This is our comments:

<table border="0"  style='border:none;'  bordercolor="#ffffff"  > <tr style='border:none;'  >   
   <td valign="center" style='border:none;'   > 
           <img src="https://www.r-pkg.org/badges/version/Rbeast?color=green">  
           <img src="http://cranlogs.r-pkg.org/badges/grand-total/Rbeast?color=green">
   </td>
   <td valign="center" style='border:none;'  > 
   In CRAN-Task-View: 
   <a href="https://cran.r-project.org/web/views/TimeSeries.html#forecasting-and-univariate-modeling">[Time Series Analysis]</a> 
   <a href="https://cran.r-project.org/web/views/Bayesian.html#time-series-models">[Bayesian inference]</a> 
   <a href="https://cran.r-project.org/web/views/Environmetrics.html#environmental-time-series">[Environmetrics]</a> 
    </td>  
  
 </tr></table>
 
  [![](https://www.r-pkg.org/badges/version/Rbeast?color=green)](https://cran.r-project.org/package=Rbeast)  [![](http://cranlogs.r-pkg.org/badges/grand-total/Rbeast?color=green)](https://cran.r-project.org/package=Rbeast) 

 In CRAN-Task-View: [[**Time Series Analysis**]](https://cran.r-project.org/web/views/TimeSeries.html#forecasting-and-univariate-modeling), [[**Bayesian inference**]](https://cran.r-project.org/web/views/Bayesian.html#time-series-models), and [[**Environmetrics**]](https://cran.r-project.org/web/views/Environmetrics.html#environmental-time-series)  

from **GitHub**: The latest R versions are also available here at [GitHub](https://github.com/zhaokg/Rbeast) and can be installed using

      ```R
        # Windows x86 or x64 (install from binary)
        install.packages("https://github.com/zhaokg/Rbeast/raw/master/R/Windows/Rbeast_0.9.5.zip" ,repos=NULL)         
        # Linux/Mac (install from source)
        install.packages("https://github.com/zhaokg/Rbeast/raw/master/R/Rbeast_0.9.5.tar.gz", repos = NULL, type="source")
      ```
=====================================================================================
=====================================================================================
=====================================================================================

 -->
 
 
<p  align="left">   
<a href= "https://cran.r-project.org/package=Rbeast">
<img src="https://www.r-pkg.org/badges/version/Rbeast?color=green"  height="20">  
<img src="http://cranlogs.r-pkg.org/badges/grand-total/Rbeast?color=green" height="20">  
<img src="https://img.shields.io/static/v1?style=plastic&logo=r&label=Rbeast%20%20&message= In CRAN-Task-View&color=brightgreen" height="20">
</a>
</p>   
  
> **Rbeast in CRAN-TASK-VIEW**:   <a href="https://cran.r-project.org/web/views/TimeSeries.html#forecasting-and-univariate-modeling">[Time Series Analysis]</a>    <a href="https://cran.r-project.org/web/views/Bayesian.html#time-series-models">[Bayesian inference]</a>     <a href="https://cran.r-project.org/web/views/Environmetrics.html#environmental-time-series">[Environmetrics]</a>  

An R package **`Rbeast`** has been deposited at [CRAN](https://CRAN.R-project.org/package=Rbeast). ( On CRAN, there is another Bayesian time-series package named "beast", which has nothing to do with the BEAST algorithim. Our package is `Rbeast`. Also, our package has nothing to do with the famous "Bayesian evolutionary analysis by sampling trees" aglorithm.) Install  `Rbeast` in R using

```R
install.packages("Rbeast")
 ```
 



#### Run and test Rbeast in R
   
The main functions in Rbeast are `beast(Y, ...)`, `beast.irreg(Y, ...)`, and `beast123(Y, metadata, prior, mcmc, extra)`. The code snippet below  provides a starting point for the basic usage.  

 ```R
library(Rbeast)
data(Nile)                       #  annual streamflow of the Nile River    
out = beast(Nile, season='none') #  'none': trend-only data without seasonlaity   
print(out)                   
plot(out)
?Rbeast                          # See more details about the usage of `beast`    
      
tetris()                         # if you dare to waste a few moments of your life 
minesweeper()                    # if you dare to waste a few more moments of your life 
 ```

<table border="0"  style='border:none;'  bordercolor="#ffffff"  width=100%  >
<tr style='border:none;'  >   
   <td valign="center" style='border:none;'  > 
        <img  height="300" align="left" src="https://github.com/zhaokg/Rbeast/raw/master/R/Images/beach.png">
   </td>
   <td valign="center" style='border:none;'  > 
       <img  height="300" align="center"  src="https://github.com/zhaokg/Rbeast/raw/master/R/Images/Nile.png">
   </td>   
 </tr>
 </table>
 
 <!---
 [![](https://github.com/zhaokg/Rbeast/raw/master/R/Images/beach.png)](https://cran.r-project.org/package=Rbeast)
 
 ----
--->

<br/>

## Installation for Matlab  <a name=matlab>    </a>

[![View Rbeast on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/72515-rbeast)
 

Install the Matlab version of **BEAST** automatically to a local folder of your choice by running 
  ```Matlab  
  beastPath = 'C:\beast\'                   
  eval( webread('http://b.link/rbeast') )  
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%% Note on Automatic Installtion %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  % 1. Write permission needed for your chosen path; the variable name must be 'beastPath'.   %
  % 2. If webread has a certificate error, run the following line instead:                    %
      eval(  webread( 'http://b.link/rbeast', weboptions('cert','') )  )                       %
  % 3. If the automatic installation fails, please manually download all the files (see blow) %       
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  ```
> The above will download all the files in the [Rbeast\Matlab folder at Github](https://github.com/zhaokg/Rbeast) to the chosen folder: if `beastPath` is missing, a default temporary folder (e.g., `C:\Users\$user_name$\AppData\Local\Temp\Rbeast for Windows 10`) will be used. If the automatic script fails, please download the Matlab files from [Github](https://github.com/zhaokg/Rbeast) manually. These files include a Matlab mex library compiled from the C soure code (e.g., `Rbeast.mexw64` for Windows, `Rbeast.mexa64` for Linux, `Rbeast.mexmaci64` for MacOS) and some Matlab wrapper functions (e.g.,`beast.m`, and `beast123.m`) similar to the R interface, as well as some test datasets (e.g., Nile.mat, and co2.mat). 

> We generated the Matlab mex binary library on our own machines with Win10, Ubuntu 22.04, and macOS High Sierra. If they fail on your machine, the mex library can be compiled  from the C source code files under `Rbeast\Source`. If needed, we are happy to work with you to compile for your specific OS or machines. Additional information on compilations from the C source is also given below.

#### Run and test Rbeast in Matlab
The Matlab API is similar to those of R. Below is a quick example:
  ```Matlab
   help beast
   help beast123  
   load('Nile.mat')                                   % annual streamflow of the Nile River startin from year 1871
   out = beast(Nile, 'season', 'none','start', 1871)  % trend-only data without seasonality
   printbeast(out)
   plotbeast(out)
  ```

----
### Installation for Python  <a name=python>   </a>


<p  align="left">   
 <a href= "https://pypi.org/project/Rbeast/"> <img src="https://img.shields.io/static/v1?style=plastic&logo=python&label=Python%20%20&message=pip install Rbeast&color=brightgreen" height="20"></a>
</p> 

A package **`Rbeast`** has been deposited at PyPI: https://pypi.org/project/Rbeast/. Run the command below in a console to install:
  
  ```python
    pip install Rbeast
  ```
> Currently, a binary wheel file was built only for Windows and Python 3.8. For other OS platforms or Python versions, the installation requires a compiler to build the package from the C/C++ code, which is a hassle-free process in Linux (requiring gcc) or Mac (requiring xcode). If needed, contact Kaiguang Zhao (zhao.1423@osu.edu) to help build the package for your specific OS platforms and Python versions.

#### Run and test Rbeast in Python

 
 
`Nile` is annual streamflow of the River Nile, starting from Year 1871. As annual observations, it has no periodic component (i.e., `season='none'`).

  ```python
import Rbeast as rb                                       # Import the Rbeast package as `rb`
nile, year = rb.load_example('nile')                      # a sample time series
o          = rb.beast( nile, start=1871, season='none')
rb.plot(o)
rb.print(o)
o  # see a list of output fields in the output variable o
```

The second example `beach` is a monthly time series of the Google Search popularity of the word ***beach*** over the US. This time series is reguarly-spaced (i.e., deltat=`1 month` =`1/12 year`); it has a cyclyic component with a period of 1 year (e.g., freq = `period / deltat` =  1 year / 1 month = 1/(1/12) = 12).
 
 > We follow R's terminology to use `freq` to refer to the number of data points per `period` -- freq = period/deltaT; apparently, this differs from the standard definiton in physics -- freq = 1/period.
  ```python
beach, year = rb.load_example('beach')
o = rb.beast(beach, start= 2004, deltat=1/12, freq =12)
rb.plot(o)
rb.print(o)
  ```

### Julia/IDL

Wrappers in Julia and IDL are being developed: We welcome contributions and help from interested developers. If interested, contact Kaiguang Zhao at zhao.1423@osu.edu.

## Description
Interpretation of time series data is affected by model choices. Different models can give different or even contradicting estimates of patterns, trends, and mechanisms for the same data–a limitation alleviated by the Bayesian estimator of abrupt change,seasonality, and trend (BEAST) of this package. BEAST seeks to improve time series decomposition by forgoing the "single-best-model" concept and embracing all competing models into the inference via a Bayesian model averaging scheme. It is a flexible tool to uncover abrupt changes (i.e., change-points), cyclic variations (e.g., seasonality), and nonlinear trends in time-series observations. BEAST not just tells when changes occur but also quantifies how likely the detected changes are true. It detects not just piecewise linear trends but also arbitrary nonlinear trends. BEAST is applicable to real-valued time series data of all kinds, be it for remote sensing, finance, public health, economics, climate sciences, ecology, and hydrology. Example applications include its use to identify regime shifts in ecological data, map forest disturbance and land degradation from satellite imagery, detect market trends in economic data, pinpoint anomaly and extreme events in climate data, and unravel system dynamics in biological data. Details on BEAST are reported in [Zhao et al. (2019)](https://go.osu.edu/beast2019). The paper is available at https://go.osu.edu/beast2019.

## Note on computation

As a Bayesian algorithm, BEAST is fast and is possibly among the fastest implementations of Bayesian time-series analysis algorithms of the same nature. (But it is still slower, compared to nonBayesian methods.) For applications dealing with a few to thousands of time series, the computation won't be an practical concern. But for remote sensing/geospatial applications that may easily involve millions or billions of time series, computation will be a big challenge for Desktop computer users. We suggest first testing BEAST on a single time series or small image chips first to determine whether BEAST is appropriate for your applications and, if yes, estimate how long it may take to process the whole image. 

In any case, for those users handling stacked time-series images, do not use `beast` or `beast.irreg`. Use **`beast123`** instead, which can handle 3D data cubes and allow parallel computing.  We also welcome consultation with Kaiguang Zhao (zhao.1423@osu.edu) to give specific suggestions if you see some value of BEAST for your applications.

## Reference
* Zhao, K., Wulder, M. A., Hu, T., Bright, R., Wu, Q., Qin, H., Li, Y., Toman, E., Mallick B., Zhang, X., & Brown, M. (2019). [Detecting change-point, trend, and seasonality in satellite time series data to track abrupt changes and nonlinear dynamics: A Bayesian ensemble algorithm.](https://go.osu.edu/beast2019) Remote Sensing of Environment, 232, 111181. (the BEAST paper) 

* Zhao, K., Valle, D., Popescu, S., Zhang, X. and Mallick, B., 2013. [Hyperspectral remote sensing of plant biochemistry using Bayesian model averaging with variable and band selection](https://www.academia.edu/download/55199778/Hyperspectral-biochemical-Bayesian-chlorophyll-carotenoid-LAI-water-content-foliar-pigment.pdf). Remote Sensing of Environment, 132, pp.102-119. (the mcmc sampler used for BEAST)

* Hu, T., Toman, E.M., Chen, G., Shao, G., Zhou, Y., Li, Y., Zhao, K. and Feng, Y., 2021. [Mapping fine-scale human disturbances in a working landscape with Landsat time series on Google Earth Engine](https://pages.charlotte.edu/gang-chen/wp-content/uploads/sites/184/2021/05/Hu_2021_BEAST-HF-s.pdf). ISPRS Journal of Photogrammetry and Remote Sensing, 176, pp.250-261. (an application paper)


<h2 id="publicationid"> Selected publications using BEAST/Rbeast  </h2>   <a name=publications></a>

Despite being published originally for ecological and enviornmental applications, BEAST is developed as a generic tool applicable to time series or time-series-like data arising from all disciplines. BEAST is not a heuristic algorithm but a rigorous statistical model. Below is a short list of peer-reviewed pulications that used BEAST for statistical data analysis.

| Discipline | Publication Title |
| --- | --- |
| Remote Sensing| *Li, J., Li, Z., Wu, H., and You, N., 2022. [Trend, seasonality, and abrupt change detection method for land surface temperature time-series analysis: Evaluation and improvement](https://www.sciencedirect.com/science/article/pii/S0034425722003285?casa_token=wj-jESXHBrQAAAAA:MPS5ThIzaw2Tvveml2fKYPzVmul24NTF11uGZpeBMTOfwtdA_hpx2OSwGR7686QPiN5xO1pHKQ). Remote Sensing of Environment, 10.1016/j.rse.2022.113222*|
|   Population Ecology  | *Henderson, P. A. (2021). [Southwood's Ecological Methods (5th edition)](https://www.google.com/books/edition/Southwood_s_Ecological_Methods/snEhEAAAQBAJ?hl=en&gbpv=1&pg=PA473&printsec=frontcover). Oxford University Press., page 475-476*|
|Political Science|*Reuning, K., Whitesell, A. and Hannah, A.L., 2022. [Facebook algorithm changes may have amplified local republican parties](https://journals.sagepub.com/doi/full/10.1177/20531680221103809). Research & Politics, 9(2), p.20531680221103809.*|
|Cardiology|*Ozier, D., Rafiq, T., de Souza, R. and Singh, S.M., 2022. [Use of Sacubitril/Valsartan Prior to Primary Prevention Implantable Cardioverter Defibrillator Implantation](https://www.sciencedirect.com/science/article/pii/S2589790X22002062). CJC Open.*|
| Hydraulic Engineering | *Xu, X., Yang, J., Ma, C., Qu, X., Chen, J. and Cheng, L., 2022. Segmented modeling method of dam displacement based on BEAST time series decomposition. Measurement, 202, p.111811.* |
| Ecosystem Sciences | *Lyu, R., Zhao, W., Pang, J., Tian, X., Zhang, J. and Wang, N., 2022. [Towards a sustainable nature reserve management: Using Bayesian network to quantify the threat of disturbance to ecosystem services](https://www.sciencedirect.com/science/article/pii/S2212041622000791?casa_token=4gYXQ65EcfgAAAAA:mdYwpF_tXZ_W0IUu8JPhlm4_P9RrabtiDGhkwu3ogElVwHb6Ie7HEWbFwgm8JDSdf99drcCYSw). Ecosystem Services, 58, p.101483.* |
| Environmental Sciences| *Nickerson, S., Chen, G., Fearnside, P., Allan, C.J., Hu, T., de Carvalho, L.M. and Zhao, K., 2022. [Forest loss is significantly higher near clustered small dams than single large dams per megawatt of hydroelectricity installed in the Brazilian Amazon](https://iopscience.iop.org/article/10.1088/1748-9326/ac8236/meta). Environmental Research Letters.*|
|  Climate Sciences|*Duke, N.C., Mackenzie, J.R., Canning, A.D., Hutley, L.B., Bourke, A.J., Kovacs, J.M., Cormier, R., Staben, G., Lymburner, L. and Ai, E., 2022. [ENSO-driven extreme oscillations in mean sea level destabilise critical shoreline mangroves—An emerging threat](https://journals.plos.org/climate/article?id=10.1371/journal.pclm.0000037). PLOS Climate, 1(8), p.e000003*|
| Finance|*Candelaria, Christopher A., Shelby M. McNeill, and Kenneth A. Shores. (2022). What is a School Finance Reform? Uncovering the ubiquity and diversity of school finance reforms using a Bayesian changepoint estimator.(EdWorkingPaper: 22-587). Retrieved from Annenberg Institute at Brown University: https://doi.org/10.26300/4vey-3w10*|
| Public health|*Linnell, K., Fudolig, M., Schwartz, A., Ricketts, T.H., O'Neil-Dunne, J.P., Dodds, P.S. and Danforth, C.M., 2022. [Spatial changes in park visitation at the onset of the pandemic](https://journals.plos.org/globalpublichealth/article?id=10.1371/journal.pgph.0000766). arXiv preprint arXiv:2205.15937.*|
|Biometerology|*Li, Y., Liu, Y., Bohrer, G., Cai, Y., Wilson, A., Hu, T., Wang, Z. and Zhao, K., 2022. [Impacts of forest loss on local climate across the conterminous United States: Evidence from satellite time-series observations](https://www.sciencedirect.com/science/article/pii/S0048969721047264?casa_token=X9fIQLvFlXcAAAAA:0nk-D2dV1cXmaIxJ7Tp79sx16npj5kgkDFjM4N2roh_akQyIfIkRaHfxPjPtp5v5dGWo-GFBcA). Science of The Total Environment, 802, p.149651.*|
| Applied Math|*Ferguson, Daniel, and François G. Meyer. [Probability density estimation for sets of large graphs with respect to spectral information using stochastic block models](https://arxiv.org/abs/2207.02168). arXiv preprint arXiv:2207.02168 (2022).*|
|Water quality|*He, Ziming, Jiayu Yao, Yancen Lu, and Danlu Guo. "Detecting and explaining long‐term changes in river water quality in south‐eastern Australia." Hydrological Processes: e14741.*|
| Hydrology | *Zohaib, M. and Choi, M., 2020. [Satellite-based global-scale irrigation water use and its contemporary trends](https://www.sciencedirect.com/science/article/pii/S0048969720302291?casa_token=pPXP5Q9glsMAAAAA:QBZq1T9FXB3JgnHwM9ug1sIDSMd2u7Jl4L2qA0fCvCwtAGcB_WhAbgTjEZBO9B_WXxtu7WKarA). Science of The Total Environment, 714, p.136719.* |
| Energy Engineering |*Lindig, S., Theristis, M. and Moser, D., 2022. Best practices for photovoltaic performance loss rate calculations. Progress in Energy, 4(2), p.022003.*|
|Virology|*Shen, L., Sun, M., Song, S., Hu, Q., Wang, N., Ou, G., Guo, Z., Du, J., Shao, Z., Bai, Y. and Liu, K., 2022. [The impact of anti-COVID19 nonpharmaceutical interventions on hand, foot, and mouth disease—A spatiotemporal perspective in Xi'an](https://onlinelibrary.wiley.com/doi/abs/10.1002/jmv.27715?casa_token=9mLRmQ7JqRIAAAAA:E2IR7q-3EqsidsYVEwiQBfJo5K5Hqx3mxKfsyZOW_ZMcWmD94B7hox6p7d9KCboZS87OZVAVj5RZHUY), northwestern China. Journal of medical virology.*|
| Pharmaceutical Sciences|*Patzkowski, M.S., Costantino, R.C., Kane, T.M., Nghiem, V.T., Kroma, R.B. and Highland, K.B., 2022. Military Health System Opioid, Tramadol, and Gabapentinoid Prescription Volumes Before and After a Defense Health Agency Policy Release. Clinical Drug Investigation, pp.1-8.*|
| Geography|*Cai, Y., Liu, S. and Lin, H., 2020. Monitoring the vegetation dynamics in the Dongting Lake Wetland from 2000 to 2019 using the BEAST algorithm based on dense Landsat time series. Applied Sciences, 10(12), p.4209.*|
| Oceanography|*Pitarch, J., Bellacicco, M., Marullo, S. and Van Der Woerd, H.J., 2021. [Global maps of Forel–Ule index, hue angle and Secchi disk depth derived from 21 years of monthly ESA Ocean Colour Climate Change Initiative data](https://essd.copernicus.org/articles/13/481/2021/). Earth System Science Data, 13(2), pp.481-490.*|
|Photovoltaics|*Micheli, L., Theristis, M., Livera, A., Stein, J.S., Georghiou, G.E., Muller, M., Almonacid, F. and Fernández, E.F., 2021. Improved PV soiling extraction through the detection of cleanings and change points. IEEE Journal of Photovoltaics, 11(2), pp.519-526.*|
|Climate Sciences|*White, J.H., Walsh, J.E. and Thoman Jr, R.L., 2021. [Using Bayesian statistics to detect trends in Alaskan precipitation](https://rmets.onlinelibrary.wiley.com/doi/abs/10.1002/joc.6946?casa_token=9axTmIRMPBsAAAAA:1rFQAEjswrqRaHwXt4GleEtbsiZUbOTwk4zk9C5mCm9STPCvdSe5nnc1pgYxfuc6t7sZZ4jsS05K06Q). International Journal of Climatology, 41(3), pp.2045-2059.*|
|Field Hydrology|*Merk, M., Goeppert, N. and Goldscheider, N., 2021. [Deep desiccation of soils observed by long-term high-resolution measurements on a large inclined lysimeter](https://hess.copernicus.org/articles/25/3519/2021/). Hydrology and Earth System Sciences, 25(6), pp.3519-3538.*|
|Forest Ecology|*Moreno-Fernández, D., Viana-Soto, A., Camarero, J.J., Zavala, M.A., Tijerín, J. and García, M., 2021. Using spectral indices as early warning signals of forest dieback: The case of drought-prone Pinus pinaster forests. Science of The Total Environment, 793, p.148578.*|
|Atmospheric Sciences|*Tingwei, C., Tingxuan, H., Bing, M., Fei, G., Yanfang, X., Rongjie, L., Yi, M. and Jie, Z., 2021. Spatiotemporal pattern of aerosol types over the Bohai and Yellow Seas observed by CALIOP. Infrared and Laser Engineering, 50(6), p.20211030.*|
|Terrestrial ecology|*Dashti, H., Pandit, K., Glenn, N.F., Shinneman, D.J., Flerchinger, G.N., Hudak, A.T., de Graaf, M.A., Flores, A., Ustin, S., Ilangakoon, N. and Fellows, A.W., 2021. [Performance of the ecosystem demography model (EDv2. 2) in simulating gross primary production capacity and activity in a dryland study area](https://www.sciencedirect.com/science/article/pii/S0168192320303725?casa_token=01dOFp15Vg4AAAAA:NpXogEEWfNjgkR-jzE5fItgIlqDh5Ll-cdwQihcibCRiWbOiXwEE_WQ3YtAQFjQ_B9t4W2T8og). Agricultural and Forest Meteorology, 297, p.108270.*|
|Environmental Engineering|*Bainbridge, R., Lim, M., Dunning, S., Winter, M.G., Diaz-Moreno, A., Martin, J., Torun, H., Sparkes, B., Khan, M.W. and Jin, N., 2022. Detection and forecasting of shallow landslides: lessons from a natural laboratory. Geomatics, Natural Hazards and Risk, 13(1), pp.686-704.*|
|Hydrology|*Yang, X., Tian, S., You, W. and Jiang, Z., 2021. Reconstruction of continuous GRACE/GRACE-FO terrestrial water storage anomalies based on time series decomposition. Journal of Hydrology, 603, p.127018.*|
|Landscape Ecology|*Adams, B.T., Matthews, S.N., Iverson, L.R., Prasad, A.M., Peters, M.P. and Zhao, K., 2021. Spring phenological variability promoted by topography and vegetation assembly processes in a temperate forest landscape. Agricultural and Forest Meteorology, 308, p.108578.*|

## Compilation from C source code (for developers and experts only)

 Though not needed but if preferred, the code can be compiled for your specific machines. Check the [Rbeast\Source](https://github.com/zhaokg/Rbeast/tree/master/Source) folder at GitHub for details.
 

## Reporting Bugs or getting help

BEAST is distributed as is and without warranty of suitability for application. The one distributed above is still a beta version, with potential room for further improvement. If you encounter flaws with the software (i.e. bugs) please report the issue. Providing a detailed description of the conditions under which the bug occurred will help to identify the bug, you can directly email its maintainer Dr. Kaiguang Zhao at zhao.1423@osu.edu. Alternatively, Use the [Issues tracker](https://github.com/zhaokg/Rbeast/issues) on GitHub to report issues with the software and to request feature enhancements. 

## Acknowledgement:

The initial version of BEAST was supported by a USGS 104B grant before 2019. The continous development afterwards is made possible by the support of a Harmful Algal Bloom Research Initiative grant from the Ohio Department of Higher Education.
