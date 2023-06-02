#allows for value labels
library(sqldf)


# file:///D:/OneDrive/Docs/Research/Mental%20Health/ICPSR_27202-V1/DS0001/27202-0001-Codebook.pdf
# data from here: https://www.icpsr.umich.edu/web/ICPSR/studies/27202
# original website  http://www.hschange.org/index7f3a.html?data=11

setwd("E:\\OneDrive\\Docs\\Research\\Exchanges")

widths_hdc<- c(11,8,9, 6, 6,400)
# had to manually insert separator symbol for header

recordlayout <- read.fwf("D:\\OneDrive\\Docs\\Research\\Mental Health\\ICPSR_27202-V1\\DS0001\\27202-0001-Record_layout-mod.txt",widths=widths_hdc
               ,skip=7,header=TRUE,sep="|")

recordlayout$VARNAME<-trimws(recordlayout$VARNAME)
recordlayout$VARTYPE <-trimws(recordlayout$VARTYPE)
recordlayout$LABEL <-trimws(recordlayout$LABEL)



data_file <- read.fwf("D:\\OneDrive\\Docs\\Research\\Mental Health\\ICPSR_27202-V1\\DS0001\\27202-0001-Data.txt"
                      , widths = recordlayout$END - recordlayout$START + 1, stringsAsFactors = FALSE
                      ,col.names = recordlayout$VARNAME )


var_lab(data_file$GENDER) 

val_lab(data_file$GENDER) = num_lab("
             1 Male    
             2 Female    
")
unique(data_file$GENDER)

data_file$GENDER <- factor(as.numeric(data_file$GENDER),
                   levels = c('1', '2'), 
                   labels = c('Male', 'Female')) 

data_file$PCP <- factor(as.numeric(data_file$PCP),
               levels = c('0', '1'), 
               labels = c('Not PCP', 'PCP')) 


data_file$SPEC <- factor(as.numeric(data_file$SPEC),
                        levels = c('1', '2', '3', '4', '5', '6', '7'), 
                        labels = c('Internal Medicine'
                                   ,'Family/General Practice'
                                   ,'Pediatrics'
                                   ,'Medical Specialties'
                                   ,'Surgical Specialties'
                                   ,'Psychiatry'
                                   ,'ObGyn')) 

data_file$PRCTYPE <- factor(as.numeric(data_file$PRCTYPE),
                            levels = c('1', '2', '3', '4', '5', '6'), 
                            labels = c('Solo/2 phys',
                                       'Group >=3 phys',
                                       'HMO',
                                       'Medical School',
                                       'Hospital-based',
                                       'Other'))


data_file$NWMCARE <- factor(as.numeric(data_file$NWMCARE),
                         levels = c('1', '2', '3', '4'), 
                         labels = c('No new Medicare patients'
                                    ,'Some new Medicare patients'
                                    ,'Most new Medicare patients'
                                    ,'All new Medicare patients')) 
data_file$MRBILL <- factor(data_file$MRBILL,
                         levels = c('1', '2', '3', '4', '-9', '-8', '-1'), 
                         labels = c('Not at all important',
                                    'Not very important',
                                    'Moderately important',
                                    'Very important',
                                    'Not Ascertained',
                                    "Don't Know",
                                    'Inapplicable'))


data_file$NWMCAID <- factor(as.numeric(data_file$NWMCAID),
                            levels = c('1', '2', '3', '4'), 
                            labels = c('No new Medicaid patients',
                                       'Some new Medicaid patients',
                                       'Most new Medicaid patients',
                                       'All new Medicaid patients'))


#1. Billing requirements, including paperwork, and filing of claims
data_file$MDBILL <- factor(data_file$MDBILL,
                             levels = c('1', '2', '3', '4', '-9', '-8', '-1'), 
                             labels = c('Not at all important',
                                        'Not very important',
                                        'Moderately important',
                                        'Very important',
                                        'Not Ascertained',
                                        "Don't Know",
                                        'Inapplicable'))
#2. Delayed reimbursement.
#MDDELAY
#3. Inadequate reimbursement.
data_file$MDREIMB <- factor(data_file$MDREIMB,
                           levels = c('1', '2', '3', '4', '-9', '-8', '-1'), 
                           labels = c('Not at all important',
                                      'Not very important',
                                      'Moderately important',
                                      'Very important',
                                      'Not Ascertained',
                                      "Don't Know",
                                      'Inapplicable'))
#4. Practice already has enough patients.
#MDNUFPT
#5. Medicaid patients have high clinical burden.
#MDPTBUR

data_file$NWPRIV <- factor(as.numeric(data_file$NWPRIV),
                           levels = c('1', '2', '3', '4'), 
                           labels = c('No new privately insured patients',
                                      'Some new privately insured patients',
                                      'Most new privately insured patients',
                                      'All new privately insured patients'))


currentview<-data_file[,c('SPEC','NWMCARE','MRBILL','NWMCAID','MDREIMB','NWPRIV','PRCTYPE','WEIGHT')]
View(currentview)

sqldf("SELECT SPEC, count(*) as numrows , sum(WEIGHT) as Wt  from data_file GROUP BY SPEC")
sqldf("SELECT SPEC, count(*) as numrows from data_file 
      WHERE NWMCARE = 'No new Medicare patients'
      GROUP BY SPEC"
      )


mean(data_file$RACETHX)