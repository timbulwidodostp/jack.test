# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Jackknife approximate t tests of regression coefficients Use jack.test (pls) With R Software
install.packages("pls")
library("pls")
jack.test = read.csv("https://raw.githubusercontent.com/timbulwidodostp/jack.test/main/jack.test/jack.test.csv",sep = ";")
# Estimation Jackknife approximate t tests of regression coefficients Use jack.test (pls) With R Software
chemical <- cbind(jack.test$chemical.Acidity, jack.test$chemical.Peroxide, jack.test$chemical.K232, jack.test$chemical.K270, jack.test$chemical.DK)
sensory <- cbind(jack.test$sensory.yellow, jack.test$sensory.green,jack.test$sensory.brown, jack.test$sensory.glossy, jack.test$sensory.transp, jack.test$sensory.syrup)
jack.test <- pcr(sensory ~ chemical, data = jack.test, validation = "LOO", jackknife = TRUE)
jack.test(jack.test, ncomp = 2)
# Jackknife approximate t tests of regression coefficients Use jack.test (pls) With R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
